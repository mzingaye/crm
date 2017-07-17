/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.BaptismBean;
import beans.CatholicBean;
import beans.SponsorBean;
import entities.Baptism;
import entities.Catholic;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import entities.User;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.BaptismFacade;
import models.CatholicFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class BaptismActions {
    @EJB
    private BaptismFacade baptismFacade;
    
    @EJB
    private ParishFacade parishFacade;
    
    @EJB
    private MinisterFacade ministerFacade;
    
    @EJB
    private SponsorFacade sponsorFacade;
    
    @EJB
    private CatholicFacade catholicFacade;
    
    @EJB
    private UserFacade userFacade;
    
    @Inject
    private BaptismBean bBean;
    
    @Inject 
    private SponsorBean sBean;
    
    @Inject
    private CatholicBean cBean;
        
    public BaptismActions() {
    }
    
    public String add(){
        Catholic c = new Catholic();
        c.setFname(cBean.getFname());
        c.setMname(cBean.getMname());
        c.setLname(cBean.getLname());
        c.setSex(cBean.getSex());
        c.setDob(cBean.getDob());
        c.setAge(cBean.getAge());
        c.setPlaceOfBirth(cBean.getPlaceOfBirth());
        c.setNatID(cBean.getNatID());
        c.setContact(cBean.getContact());
        c.setFfname(cBean.getFfname());
        c.setFmname(cBean.getFmname());
        c.setFlname(cBean.getFlname());
        c.setFnatID(cBean.getFnatID());
        c.setMfname(cBean.getMfname());
        c.setMmname(cBean.getMmname());
        c.setMlname(cBean.getMlname());
        c.setMnatID(cBean.getMnatID());
        User u = this.userFacade.find(2);
        c.setUserid(u);
        this.catholicFacade.create(c);
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
        Minister m = this.ministerFacade.find(bBean.getMinisterid());
        Parish p = this.parishFacade.find(bBean.getParishid());
        Baptism b = new Baptism();
        b.setCname(bBean.getCname());
        b.setDateOfBaptism(bBean.getDateOfBaptism());
        b.setFirstCommunion(bBean.getFirstCommunion());
        b.setBaptismNumber(bBean.getBaptismNumber());
        b.setPhysicalAddress(bBean.getPhysicalAddress());
        b.setUserid(u);
        b.setMemberid(c);
        b.setParishid(p);
        b.setMinisterid(m);
        b.setSponsorid(s);
        this.baptismFacade.create(b);
        return "baptism";
    }
}
