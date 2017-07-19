/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicBean;
import beans.CatholicSpouseBean;
import beans.MatrimonialBean;
import beans.SponsorBean;
import beans.SponsorSpouseBean;
import entities.Catholic;
import entities.Matrimonial;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import entities.User;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.CatholicFacade;
import models.MatrimonialFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class MatrimonialController {
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private ParishFacade parishFacade;
    @EJB
    private UserFacade userFacade;
    @EJB
    private MinisterFacade ministerFacade;
    
    @EJB
    private MatrimonialFacade matrimonialFacade;
    
    @Inject
    private MatrimonialBean mBean;
    
    @Inject
    private CatholicBean cBean;
    
    @Inject
    private CatholicSpouseBean csBean;
    
    @Inject 
    private SponsorBean sBean;
    
    @Inject
    private SponsorSpouseBean ssBean;
    
    public MatrimonialController() {
    }
    
    public String newRec(){
        sBean.setFname("");
        sBean.setMname("");
        sBean.setLname("");
        sBean.setSex("");
        sBean.setDob(null);
        sBean.setAge(0);
        sBean.setNatID("");
        sBean.setContact("");
        
        ssBean.setFname("");
        ssBean.setMname("");
        ssBean.setLname("");
        ssBean.setSex("");
        ssBean.setDob(null);
        ssBean.setAge(0);
        ssBean.setNatID("");
        ssBean.setContact("");
        
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
        
        csBean.setFname("");
        csBean.setMname("");
        csBean.setLname("");
        csBean.setSex("");
        csBean.setDob(null);
        csBean.setAge(0);
        csBean.setPlaceOfBirth("");
        csBean.setNatID("");
        csBean.setContact("");
        csBean.setFfname("");
        csBean.setFmname("");
        csBean.setFlname("");
        csBean.setFnatID("");
        csBean.setMfname("");
        csBean.setMmname("");
        csBean.setMlname("");
        csBean.setMnatID("");
        
        return "creatematrimonialrec";
    }
    
    public List<Matrimonial> getAll(){
        return this.matrimonialFacade.findAll();
    }
    
    public String add(){
        Matrimonial m = new Matrimonial();
        m.setMarriageNumber(mBean.getMarriageNumber());
        m.setDateOfMarriage(mBean.getDateOfMarriage());
        m.setHusbandMemberID(cBean.getId());
        m.setHusbandAddress(mBean.getHusbandAddress());
        m.setWifeMemberID(csBean.getId());
        m.setWifeAddress(mBean.getWifeAddress());
        m.setHusbandSponsorID(sBean.getId());
        m.setWifeSponsorID(ssBean.getId());
        m.setOfficialDesignation(mBean.getOfficialDesignation());
        m.setConditionOfHus(mBean.getConditionOfHus());
        m.setConditionOfWife(mBean.getConditionOfWife());
        m.setConsentHus(mBean.getConsentHus());
        m.setConsentWife(mBean.getConsentWife());
        m.setMarriageBy(mBean.getMarriageBy());
        Parish p = this.parishFacade.find(mBean.getParishid());
        Minister min = this.ministerFacade.find(mBean.getMinisterid());
        User u = this.userFacade.find(2);
        m.setParishid(p);
        m.setMinisterid(min);
        m.setUserid(u);
        this.matrimonialFacade.create(m);
        return "matrimonial";
    }
    
    public String view(Matrimonial m){
        sBean.setId(m.getHusbandSponsorID());
        Sponsor s = this.sponsorFacade.find(m.getHusbandSponsorID());
        sBean.setFname(s.getFname());
        sBean.setMname(s.getMname());
        sBean.setLname(s.getLname());
        sBean.setSex(s.getSex());
        sBean.setDob(s.getDob());
        sBean.setAge(s.getAge());
        sBean.setNatID(s.getNatID());
        sBean.setContact(s.getContact());
        
        ssBean.setId(m.getWifeSponsorID());
        Sponsor ss = this.sponsorFacade.find(m.getWifeSponsorID())
        ssBean.setFname(ss.getFname());
        ssBean.setMname(ss.getMname());
        ssBean.setLname(ss.getLname());
        ssBean.setSex(ss.getSex());
        ssBean.setDob(ss.getDob());
        ssBean.setAge(ss.getAge());
        ssBean.setNatID(ss.getNatID());
        ssBean.setContact(ss.getContact());
        
        cBean.setId(m.getHusbandMemberID());
        Catholic c = this.catholicFacade.find(m.getHusbandMemberID());
        cBean.setFname(c.getFname());
        cBean.setMname(c.getMname());
        cBean.setLname(c.getLname());
        cBean.setSex(c.getSex());
        cBean.setDob(c.getDob());
        cBean.setAge(c.getAge());
        cBean.setPlaceOfBirth(c.getPlaceOfBirth());
        cBean.setNatID(c.getNatID());
        cBean.setContact(c.getContact());
        cBean.setFfname(c.getFfname());
        cBean.setFmname(c.getFmname());
        cBean.setFlname(c.getFlname());
        cBean.setFnatID(c.getFnatID());
        cBean.setMfname(c.getMfname());
        cBean.setMmname(c.getMmname());
        cBean.setMlname(c.getMlname());
        cBean.setMnatID(c.getMnatID());
        
        csBean.setId(m.getWifeMemberID());
        Catholic cs = this.catholicFacade.find(m.getWifeMemberID());
        csBean.setFname(cs.getFname());
        csBean.setMname(cs.getMname());
        csBean.setLname(cs.getLname());
        csBean.setSex(cs.getSex());
        csBean.setDob(cs.getDob());
        csBean.setAge(cs.getAge());
        csBean.setPlaceOfBirth(cs.getPlaceOfBirth());
        csBean.setNatID(cs.getNatID());
        csBean.setContact(cs.getContact());
        csBean.setFfname(cs.getFfname());
        csBean.setFmname(cs.getFmname());
        csBean.setFlname(cs.getFlname());
        csBean.setFnatID(cs.getFnatID());
        csBean.setMfname(cs.getMfname());
        csBean.setMmname(cs.getMmname());
        csBean.setMlname(cs.getMlname());
        csBean.setMnatID(cs.getMnatID());
        
        mBean.setId(m.getId());
        mBean.setConditionOfHus(m.getConditionOfHus());
        mBean.setConditionOfWife(m.getConditionOfWife());
        mBean.setConsentHus(m.getConsentHus());
        mBean.setConsentWife(m.getConsentWife());
        mBean.setDateOfMarriage(m.getDateOfMarriage());
        mBean.setHusbandAddress(m.getHusbandAddress());
        mBean.setHusbandMemberID(m.getHusbandMemberID());
        mBean.setHusbandSponsorID(m.getHusbandSponsorID());
        mBean.setMarriageBy(m.getMarriageBy());
        mBean.setMarriageNumber(m.getMarriageNumber());
        mBean.setMinisterid(m.getMinisterid().getId());
        mBean.setOfficialDesignation(m.getOfficialDesignation());
        mBean.setParishid(m.getParishid().getId());
        mBean.setWifeAddress(m.getWifeAddress());
        mBean.setWifeMemberID(m.getWifeMemberID());
        mBean.setWifeSponsorID(m.getWifeSponsorID());
        return "viewmatrimonial";
    }
    
    public String edit(){
        Matrimonial m = new Matrimonial(mBean.getId());
        m.setMarriageNumber(mBean.getMarriageNumber());
        m.setDateOfMarriage(mBean.getDateOfMarriage());
        m.setHusbandMemberID(cBean.getId());
        m.setHusbandAddress(mBean.getHusbandAddress());
        m.setWifeMemberID(csBean.getId());
        m.setWifeAddress(mBean.getWifeAddress());
        m.setHusbandSponsorID(sBean.getId());
        m.setWifeSponsorID(ssBean.getId());
        m.setOfficialDesignation(mBean.getOfficialDesignation());
        m.setConditionOfHus(mBean.getConditionOfHus());
        m.setConditionOfWife(mBean.getConditionOfWife());
        m.setConsentHus(mBean.getConsentHus());
        m.setConsentWife(mBean.getConsentWife());
        m.setMarriageBy(mBean.getMarriageBy());
        Parish p = this.parishFacade.find(mBean.getParishid());
        Minister min = this.ministerFacade.find(mBean.getMinisterid());
        User u = this.userFacade.find(2);
        m.setParishid(p);
        m.setMinisterid(min);
        m.setUserid(u);
        this.matrimonialFacade.edit(m);
        return "matrimonial";
    }
    
}
