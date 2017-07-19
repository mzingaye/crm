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
import entities.Matrimonial;
import entities.Minister;
import entities.Parish;
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
    
}
