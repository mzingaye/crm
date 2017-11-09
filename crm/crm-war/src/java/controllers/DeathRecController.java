/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicSpouseBean;
import beans.DeathBean;
import beans.UserBean;
import entities.Baptism;
import entities.Death;
import entities.Matrimonial;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.CatholicFacade;
import models.DeathFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class DeathRecController implements Serializable  {
    @EJB
    private UserFacade userFacade;
    
    @EJB
    private ParishFacade parishFacade;
    
    @EJB
    private MinisterFacade ministerFacade;
    
    @EJB
    private CatholicFacade catholicFacade;
    
    @EJB
    private DeathFacade deathFacade;
    
    @Inject
    private UserBean uBean;
    
    @Inject
    private CatholicSpouseBean csBean;
    
    @Inject
    private DeathBean dBean;
    
    private Baptism b;
    private Matrimonial m;
    private int ministerid;
    private int parishid;
    private Death d;
    private String fullname;
    static final Logger LOG = Logger.getLogger(DeathRecController.class);

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Baptism getB() {
        return b;
    }

    public void setB(Baptism b) {
        this.b = b;
    }

    public Matrimonial getM() {
        return m;
    }

    public void setM(Matrimonial m) {
        this.m = m;
    }

    public int getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(int ministerid) {
        this.ministerid = ministerid;
    }

    public int getParishid() {
        return parishid;
    }

    public void setParishid(int parishid) {
        this.parishid = parishid;
    }

    public Death getD() {
        return d;
    }

    public void setD(Death d) {
        this.d = d;
    }
    
    public DeathRecController() {
        this.d = new Death();
    }
    
    public String newRec(Baptism b){
        this.b = b;
        this.d = new Death();
        this.m = new Matrimonial();
        this.fullname = "";
        this.ministerid = 0;
        this.parishid = 0;
        return "createdeathrec";
    }
    
    public void spouse(Matrimonial m){
        try{
           this.m = m;
            if(m.getBaptismid().getMemberid().getId().equals(b.getMemberid().getId())){
                this.fullname = m.getSpouse();
            }
            else{
                this.fullname = m.getBaptismid().getMemberid().getFname().concat(" ").concat(m.getBaptismid().getMemberid().getLname());
            } 
        }
        catch(NullPointerException e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Select the died catholic first before choosing spouse!");
        }
    }
    
    public List<Death> getAll(){
        return this.deathFacade.findAll();
    }
    
    public String add(){
        d.setParishid(this.parishFacade.find(parishid));
        d.setMinisterid(this.ministerFacade.find(ministerid));
        d.setUserid(this.userFacade.find(uBean.getId()));
        d.setMatrimonialid(m);
        d.setBaptismid(b);
        try{
            if(d.getDateOfDeath().compareTo(d.getDateOfBurial()) < 0){
                this.deathFacade.create(this.d);
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Death Record [ "+d.getId()+" ] for "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" added successfully!");
                this.b = new Baptism();
                this.d = new Death();
                this.m = new Matrimonial();
                this.fullname = "";
                return "death";
            }
            else{
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Date of Death: "+d.getDateOfDeath()+" is after the entered Date of Burial: "+d.getDateOfBurial()+" hence death record cannot be created!");
                return null;
            }
        }
        catch(Exception e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Death Record for "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" was not added due to an error: "+e+"!");
            return null;
        }
    }
    
    public String view(Death d){
        this.d = d;
        this.m = d.getMatrimonialid();
        this.b = d.getBaptismid();
        this.ministerid = d.getMinisterid().getId();
        this.parishid = d.getParishid().getId();
        if(m.getBaptismid().getMemberid().getId().equals(b.getMemberid().getId())){
                this.fullname = m.getSpouse();
            }
            else{
                this.fullname = m.getBaptismid().getMemberid().getFname().concat(" ").concat(m.getBaptismid().getMemberid().getLname());
            } 
        return "viewdeath";
    }
    
    public String edit(){
        d.setParishid(this.parishFacade.find(parishid));
        d.setMinisterid(this.ministerFacade.find(ministerid));
        d.setUserid(this.userFacade.find(uBean.getId()));
        d.setMatrimonialid(m);
        d.setBaptismid(b);
        try{
            if(d.getDateOfDeath().compareTo(d.getDateOfBurial()) < 0){
                this.deathFacade.edit(this.d);
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Death Record [ "+d.getId()+" ] for "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" updated successfully!");
                this.b = new Baptism();
                this.d = new Death();
                this.m = new Matrimonial();
                this.fullname = "";
                return "death";
            }
            else{
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Date of Death: "+d.getDateOfDeath()+" is after the entered Date of Burial: "+d.getDateOfBurial()+" hence death record cannot be updated!");
                return null;
            }
        }
        catch(Exception e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Death Record for "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" was not updated due to an error: "+e+"!");
            return null;
        }
    }
}
