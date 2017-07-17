/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SponsorBean;
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
    
    public SponsorController() {
        
    }
    
    public List<Sponsor> getAll(){
        return this.sponsorFacade.findAll();
    }
    
    public String newMember(){
        sBean.setFname("");
        sBean.setMname("");
        sBean.setLname("");
        sBean.setSex("");
        sBean.setDob(null);
        sBean.setAge(0);
        sBean.setNatID("");
        sBean.setContact("");
        return "addsponsor";
    }
    
    public String add(){
        Sponsor s = new Sponsor();
        s.setFname(sBean.getFname());
        s.setMname(sBean.getMname());
        s.setLname(sBean.getLname());
        s.setSex(sBean.getSex());
        s.setDob(sBean.getDob());
        s.setAge(sBean.getAge());
        s.setNatID(sBean.getNatID());
        s.setContact(sBean.getContact());
        this.sponsorFacade.create(s);
        return "sponsors";
    }
    
    public String nextBapt(){
        
        return "newBaptism";
    }
    
    public String search(){
        return null;
    }
}
