/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SponsorBean;
import beans.SponsorSpouseBean;
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
