/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicBean;
import beans.ConfirmationBean;
import entities.Catholic;
import entities.Confirmation;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import entities.User;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class ConfirmationController {
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
    private CatholicBean cBean;

    public ConfirmationController() {
    }
    
    public List<Confirmation> getall(){
        return this.confirmationFacade.findAll();
    }
    public String newCon(){
        cBean.setFname("");
        cBean.setMname("");
        cBean.setLname("");
        cBean.setSex("");
        cBean.setDob(null);
        cBean.setAge(0);
        cBean.setPlaceOfBirth("");
        cBean.setNatID("");
        cBean.setContact("");
        cBean.setFfname("");
        cBean.setFmname("");
        cBean.setFlname("");
        cBean.setFnatID("");
        cBean.setMfname("");
        cBean.setMmname("");
        cBean.setMlname("");
        cBean.setMnatID("");
        coBean.setBaptismid(null);
        coBean.setDateOfConfirmation(null);
        //coBean.setMemberid(null);
        coBean.setMinisterid(null);
        coBean.setParishid(null);
        coBean.setSponsorid(null);
        return "createconfirmation";
    }
    
    private int minister;
    private int catholic;
    private int parish;
    private int sponsor;
    /*private String baptizedBy;

    public String getBaptizedBy() {
        return baptizedBy;
    }

    public void setBaptizedBy(String baptizedBy) {
        this.baptizedBy = baptizedBy;
    }*/

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
    
    public String add(){
        Confirmation co = new Confirmation();
        co.setDateOfConfirmation(coBean.getDateOfConfirmation());
        //co.setBaptizedBy(coBean.getBaptizedBy());
        Minister m = this.ministerFacade.find(minister);
        Catholic c = this.catholicFacade.find(cBean.getId());
        Parish p = this.parishFacade.find(parish);
        Sponsor s = this.sponsorFacade.find(sponsor);
        User u = this.userFacade.find(2);
        co.setMinisterid(m);
        //co.setMemberid(c);
        co.setParishid(p);
        co.setSponsorid(s);
        co.setUserid(u);
        this.confirmationFacade.create(co);
        return "confirmation";
    }
    
    public String view(Confirmation co){
        /*cBean.setId(co.getMemberid().getId());
        cBean.setFname(co.getMemberid().getFname());
        cBean.setMname(co.getMemberid().getMname());
        cBean.setLname(co.getMemberid().getLname());
        cBean.setSex(co.getMemberid().getSex());
        cBean.setDob(co.getMemberid().getDob());
        cBean.setAge(co.getMemberid().getAge());
        cBean.setPlaceOfBirth(co.getMemberid().getPlaceOfBirth());
        cBean.setNatID(co.getMemberid().getNatID());
        cBean.setContact(co.getMemberid().getContact());
        cBean.setFfname(co.getMemberid().getFfname());
        cBean.setFmname(co.getMemberid().getFmname());
        cBean.setFlname(co.getMemberid().getFlname());
        cBean.setFnatID(co.getMemberid().getFnatID());
        cBean.setMfname(co.getMemberid().getMfname());
        cBean.setMmname(co.getMemberid().getMmname());
        cBean.setMlname(co.getMemberid().getMlname());
        cBean.setMnatID(co.getMemberid().getMnatID());
        coBean.setBaptizedBy(co.getBaptizedBy());
        coBean.setDateOfConfirmation(co.getDateOfConfirmation());
        coBean.setMemberid(co.getMemberid());*/
        coBean.setMinisterid(co.getMinisterid());
        coBean.setParishid(co.getParishid());
        coBean.setSponsorid(co.getSponsorid());
        coBean.setId(co.getId());
        return "viewconfirmation";
    }
    
    public String edit(){
        Confirmation co = new Confirmation(coBean.getId());
        co.setDateOfConfirmation(coBean.getDateOfConfirmation());
        //co.setBaptizedBy(coBean.getBaptizedBy());
        Minister m = this.ministerFacade.find(coBean.getMinisterid());
        Catholic c = this.catholicFacade.find(cBean.getId());
        Parish p = this.parishFacade.find(coBean.getParishid());
        Sponsor s = this.sponsorFacade.find(coBean.getSponsorid());
        User u = this.userFacade.find(2);
        co.setMinisterid(m);
        //co.setMemberid(c);
        co.setParishid(p);
        co.setSponsorid(s);
        co.setUserid(u);
        this.confirmationFacade.edit(co);
        return "confirmation";
    }
}
