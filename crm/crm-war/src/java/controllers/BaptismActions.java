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
    
    public String newRec(){
        bBean.setId(null);
        bBean.setCname(null);
        bBean.setDateOfBaptism(null);
        bBean.setFirstCommunion(null);
        bBean.setBaptismNumber(0);
        bBean.setPhysicalAddress(null);
        //bBean.setUserid(b.getUserid().getId());
        bBean.setMemberid(null);
        bBean.setParishid(0);
        bBean.setMinisterid(0);
        bBean.setSponsorid(null);
        
        cBean.setId(null);
        cBean.setFname(null);
        cBean.setMname(null);
        cBean.setLname(null);
        cBean.setSex(null);
        cBean.setDob(null);
        cBean.setAge(0);
        cBean.setPlaceOfBirth(null);
        cBean.setNatID(null);
        cBean.setContact(null);
        cBean.setFfname(null);
        cBean.setFmname(null);
        cBean.setFlname(null);
        cBean.setFnatID(null);
        cBean.setMfname(null);
        cBean.setMmname(null);
        cBean.setMlname(null);
        cBean.setMnatID(null);
        
        sBean.setId(null);
        sBean.setFname(null);
        sBean.setMname(null);
        sBean.setLname(null);
        sBean.setSex(null);
        sBean.setDob(null);
        sBean.setAge(0);
        sBean.setNatID(null);
        sBean.setContact(null);
        
        return "createcatholic";
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
    
    public String view(Baptism b){
        bBean.setId(b.getId());
        bBean.setCname(b.getCname());
        bBean.setDateOfBaptism(b.getDateOfBaptism());
        bBean.setFirstCommunion(b.getFirstCommunion());
        bBean.setBaptismNumber(b.getBaptismNumber());
        bBean.setPhysicalAddress(b.getPhysicalAddress());
        //bBean.setUserid(b.getUserid().getId());
        bBean.setMemberid(b.getMemberid());
        bBean.setParishid(b.getParishid().getId());
        bBean.setMinisterid(b.getMinisterid().getId());
        bBean.setSponsorid(b.getSponsorid());
        
        cBean.setId(b.getMemberid().getId());
        cBean.setFname(b.getMemberid().getFname());
        cBean.setMname(b.getMemberid().getMname());
        cBean.setLname(b.getMemberid().getLname());
        cBean.setSex(b.getMemberid().getSex());
        cBean.setDob(b.getMemberid().getDob());
        cBean.setAge(b.getMemberid().getAge());
        cBean.setPlaceOfBirth(b.getMemberid().getPlaceOfBirth());
        cBean.setNatID(b.getMemberid().getNatID());
        cBean.setContact(b.getMemberid().getContact());
        cBean.setFfname(b.getMemberid().getFfname());
        cBean.setFmname(b.getMemberid().getFmname());
        cBean.setFlname(b.getMemberid().getFlname());
        cBean.setFnatID(b.getMemberid().getFnatID());
        cBean.setMfname(b.getMemberid().getMfname());
        cBean.setMmname(b.getMemberid().getMmname());
        cBean.setMlname(b.getMemberid().getMlname());
        cBean.setMnatID(b.getMemberid().getMnatID());
        
        sBean.setId(b.getSponsorid().getId());
        sBean.setFname(b.getSponsorid().getFname());
        sBean.setMname(b.getSponsorid().getMname());
        sBean.setLname(b.getSponsorid().getLname());
        sBean.setSex(b.getSponsorid().getSex());
        sBean.setDob(b.getSponsorid().getDob());
        sBean.setAge(b.getSponsorid().getAge());
        sBean.setNatID(b.getSponsorid().getNatID());
        sBean.setContact(b.getSponsorid().getContact());
        
        return "viewcatholic";
    }
    
    public String edit(){
        Catholic c = new Catholic(cBean.getId());
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
        this.catholicFacade.edit(c);
        Sponsor s = new Sponsor(sBean.getId());
        s.setFname(sBean.getFname());
        s.setMname(sBean.getMname());
        s.setLname(sBean.getLname());
        s.setSex(sBean.getSex());
        s.setDob(sBean.getDob());
        s.setAge(sBean.getAge());
        s.setNatID(sBean.getNatID());
        s.setContact(sBean.getContact());
        this.sponsorFacade.edit(s);
        Minister m = this.ministerFacade.find(bBean.getMinisterid());
        Parish p = this.parishFacade.find(bBean.getParishid());
        Baptism b = new Baptism(bBean.getId());
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
        this.baptismFacade.edit(b);
        return "baptism";
    }
    
    public String delete(Baptism b){
        b.setDeleteFlag(1);
        this.baptismFacade.edit(b);
        return "baptism";
    }
}
