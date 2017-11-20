/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SponsorBean;
import beans.SponsorSpouseBean;
import beans.UserBean;
import entities.Catholic;
import entities.Sponsor;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.SponsorFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class SponsorController implements Serializable  {
    @EJB
    private SponsorFacade sponsorFacade;
    
    @Inject
    private SponsorBean sBean;
    
    @Inject
    private UserBean uBean;
    
    @Inject
    private SponsorSpouseBean ssBean;
    
    Logger log = Logger.getLogger(SponsorController.class);
    
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
    public int count(){
        return this.sponsorFacade.count();
    }
    
    public String newMember(){
        this.s = new Sponsor();
        return "addsponsor";
    }
    
    public String add(){
        try{
           this.sponsorFacade.create(this.s);
            this.s = new Sponsor();
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Sponsor [ "+s.getId()+" ]  created successfully!");
            return "sponsors";  
        }
        catch(Exception e){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Cannot create sponsor. Error : "+e);
            return null;
        }
       
    }
    
    public String view(Sponsor s){
        this.s = s;
        return "viewsponsor";
    }
    
    public String make(Catholic c){
        /*if(c.getAge()<18){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Member [ "+c.getId()+" ] is below 18 years!");
            return null;
        }
        else{*/
            this.s = new Sponsor();
            this.s.setFname(c.getFname());
            this.s.setMname(c.getMname());
            this.s.setLname(c.getLname());
            //this.s.setNatID(c.getNatID());
            //this.s.setAge(c.getAge());
            this.s.setSex(c.getSex());
            //this.s.setDob(c.getDob());
            //this.s.setContact(c.getContact());
            return "addsponsor";  
       // }
        
        //return "addsponsor";
    }
    
    public String edit(){
        try{
           this.sponsorFacade.edit(s);
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Sponsor [ "+s.getId()+" ]  updated successfully!");
            return "sponsors";  
        }
        catch(Exception e){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Cannot update sponsor. Error : "+e);
            return null;
        }
        
    }
    
    public String nextBapt(){
        
        return "newBaptism";
    }
    
    /*public String search(){
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
    }*/
    
    public void delete(Sponsor s){
        try{
            this.sponsorFacade.remove(s);
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Sponsor Record. No "+s.getId()+" deleted succesffully!");
        
        }
        catch(Exception e){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Sponsor Record. No "+s.getId()+" cannot be deleted due to Error :"+e);
        }
    }
}
