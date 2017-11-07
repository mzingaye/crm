/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SponsorBean;
import beans.SponsorSpouseBean;
import entities.Catholic;
import entities.Sponsor;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class SponsorController {
    @EJB
    private SponsorFacade sponsorFacade;
    
    @Inject
    private SponsorBean sBean;
    
    @Inject
    private SponsorSpouseBean ssBean;
    
    private Sponsor s;

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }
    
    public SponsorController() {
        this.s = new Sponsor();
        
    }
    
    public List<Sponsor> getAll(){
        return this.sponsorFacade.findAll();
    }
    
    public String newMember(){
        this.s = new Sponsor();
        return "addsponsor";
    }
    
    public String add(){
        this.sponsorFacade.create(this.s);
        this.s = new Sponsor();
        return "sponsors";
    }
    
    public String view(Sponsor s){
        this.s = s;
        return "viewsponsor";
    }
    
    public String make(Catholic c){
        if(c.getAge()<18)
            return null;
        else{
            this.s = new Sponsor();
            this.s.setFname(c.getFname());
            this.s.setMname(c.getMname());
            this.s.setLname(c.getLname());
            this.s.setNatID(c.getNatID());
            this.s.setAge(c.getAge());
            this.s.setSex(c.getSex());
            this.s.setDob(c.getDob());
            this.s.setContact(c.getContact());
            return "addsponsor";  
        }
        
    }
    
    public String edit(){
        this.sponsorFacade.edit(s);
        return "sponsors";
    }
    
    public String nextBapt(){
        
        return "newBaptism";
    }
    
    public String search(){
        Sponsor s = this.sponsorFacade.find(sBean.getId());
        sBean.setFname(s.getFname());
        sBean.setMname(s.getMname());
        sBean.setLname(s.getMname());
        sBean.setSex(s.getSex());
        sBean.setDob(s.getDob());
        sBean.setAge(s.getAge());
        sBean.setNatID(s.getNatID());
        sBean.setContact(s.getContact());
        return null;
    }
    
    public String searchSpouse(){
        Sponsor ss = this.sponsorFacade.find(ssBean.getId());
        ssBean.setFname(ss.getFname());
        ssBean.setMname(ss.getMname());
        ssBean.setLname(ss.getMname());
        ssBean.setSex(ss.getSex());
        ssBean.setDob(ss.getDob());
        ssBean.setAge(ss.getAge());
        ssBean.setNatID(ss.getNatID());
        ssBean.setContact(ss.getContact());
        return null;
    }
}
