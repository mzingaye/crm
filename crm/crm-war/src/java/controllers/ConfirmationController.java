/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.ConfirmationBean;
import beans.UserBean;
import entities.Baptism;
import entities.Confirmation;
import entities.Sponsor;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */

@ManagedBean(name = "confirmation")
@SessionScoped
public class ConfirmationController implements Serializable {

    @EJB
    private BaptismFacade baptismFacade;
    @EJB
    private UserFacade userFacade;
    
    @EJB
    private SponsorFacade sponsorFacade;
    
    @EJB
    private ParishFacade parishFacade;
    
    @EJB
    private CatholicFacade catholicFacade;
    
    @EJB
    private MinisterFacade ministerFacade;
    
    @EJB
    private ConfirmationFacade confirmationFacade;
    
    @Inject
    private ConfirmationBean coBean;
    
    @Inject
    private UserBean uBean;
    
    static final Logger LOG = Logger.getLogger(ConfirmationController.class);
    private Confirmation co;
    private Baptism b;
    private Sponsor s;
    private int minister;
    private int catholic;
    private int parish;
    private int sponsor;

    public Confirmation getCo() {
        return co;
    }

    public void setCo(Confirmation co) {
        this.co = co;
    }

    public Baptism getB() {
        return b;
    }

    public void setB(Baptism b) {
        this.b = b;
    }

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }

    public int getMinister() {
        return minister;
    }

    public void setMinister(int minister) {
        this.minister = minister;
    }

    public int getCatholic() {
        return catholic;
    }

    public void setCatholic(int catholic) {
        this.catholic = catholic;
    }

    public int getParish() {
        return parish;
    }

    public void setParish(int parish) {
        this.parish = parish;
    }

    public int getSponsor() {
        return sponsor;
    }

    public void setSponsor(int sponsor) {
        this.sponsor = sponsor;
    }
    
     public ConfirmationController() {
        this.co = new Confirmation();
    }
    
    public List<Confirmation> getall(){
        return this.confirmationFacade.findAll();
    }
    
    public String newCon(Baptism b){
        this.b = b;
        this.co = new Confirmation();
        this.sponsor = b.getSponsorid().getId();
        this.minister = 0;
        this.parish = 0;
        return "createconfirmation";
    }
    
    public String add(){
        if(b != null){
            if(minister == 0 ){
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Minister empty, hence confirmation record cannot be created");
                return null;
            }
            else if(parish == 0){
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Parish empty, hence confirmation record cannot be created");
                return null;
            }
            else{
                if(b.getMemberid().getAge() < 12){
                    LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" is below 12 years of age, hence cannot be confirmed!");
                    return null; 
                 }
                 try{
                     this.confirmationFacade.findBaptism(b);
                     LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" can only be confirmed ONCE!");
                     return null;
                 }
                 catch(NoResultException | EJBException no){
                     if(b.getDateOfBaptism().compareTo(co.getDateOfConfirmation()) < 0){
                         co.setBaptismid(b);
                         co.setMinisterid(this.ministerFacade.find(minister));
                         co.setParishid(this.parishFacade.find(parish));
                         co.setSponsorid(this.sponsorFacade.find(sponsor));
                         co.setUserid(this.userFacade.find(uBean.getId()));
                         this.confirmationFacade.create(co);
                         LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  confirmation record ["+co.getId()+"] added successfully!");
                         this.co = new Confirmation();
                         this.b = new Baptism();
                         return "confirmation";
                     }
                     else{
                         LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Baptism Date: "+b.getDateOfBaptism()+" is after the entered Confirmation Date: "+co.getDateOfConfirmation()+" hence confirmation record cannot be created");
                         return null;
                     }
                 }
            }
        }  
        else{
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => No baptism record found, confirmation is done on baptized catholics ONLY!");
            return null;
        }
    }
    
    public String view(Confirmation co){
        this.co = co;
        this.b = co.getBaptismid();
        this.minister = co.getMinisterid().getId();
        this.parish = co.getParishid().getId();
        this.sponsor = co.getSponsorid().getId();
        return "viewconfirmation";
    }
    
    public String edit(){
        if(b != null){
            if(b.getMemberid().getAge() < 12){
               LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" is below 12 years of age, hence cannot be confirmed!");
               return null; 
            }
            try{
                if(b.getDateOfBaptism().compareTo(co.getDateOfConfirmation()) < 0){
                    co.setBaptismid(b);
                    co.setMinisterid(this.ministerFacade.find(minister));
                    co.setParishid(this.parishFacade.find(parish));
                    co.setSponsorid(this.sponsorFacade.find(sponsor));
                    co.setUserid(this.userFacade.find(uBean.getId()));
                    this.confirmationFacade.edit(co);
                    LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  confirmation record ["+co.getId()+"] updated successfully!");
                    this.co = new Confirmation();
                    this.b = new Baptism();
                    return "confirmation";
                }
                else{
                    LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Baptism Date: "+b.getDateOfBaptism()+" is after the entered Confirmation Date: "+co.getDateOfConfirmation()+" hence confirmation record cannot be updated!");
                    return null;
                }
            }
            catch(NoResultException | EJBException no){
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Member must be baptized before being confirmed!");
                return null;
            }
        }  
        else{
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => No baptism record found, confirmation is done on baptized catholics ONLY!");
            return null;
        }
        
    }
    
    public void delete(Confirmation co){
        this.confirmationFacade.remove(co);
        LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" deleted succesfful!");
        
    }
}
