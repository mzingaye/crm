/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicBean;
import beans.CatholicSpouseBean;
import beans.DeathBean;
import entities.Catholic;
import entities.Death;
import entities.Minister;
import entities.Parish;
import entities.User;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.CatholicFacade;
import models.DeathFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class DeathRecController {
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
    private CatholicBean cBean;
    
    @Inject
    private CatholicSpouseBean csBean;
    
    @Inject
    private DeathBean dBean;
    
    public DeathRecController() {
    }
    
    public String newRec(){
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
        return "createdeathrec";
    }
    
    public List<Death> getAll(){
        return this.deathFacade.findAll();
    }
    
    public String add(){
        Death d = new Death();
        d.setDateOfBurial(dBean.getDateOfBurial());
        d.setDod(dBean.getDod());
        d.setPlaceOfBurial(dBean.getPlaceOfBurial());
        d.setPlaceOfDeath(dBean.getPlaceOfDeath());
        d.setSacramentAdministered(dBean.getSacramentAdministered());
        Minister m = this.ministerFacade.find(dBean.getMinisterid());
        Catholic c = this.catholicFacade.find(cBean.getId());
        Parish p = this.parishFacade.find(dBean.getParishid());
        User u = this.userFacade.find(2);
        d.setMemberid(c);
        d.setMinisterid(m);
        d.setParishid(p);
        d.setUserid(u);
        d.setSpouseMemberID(csBean.getId());
        this.deathFacade.create(d);
        return "death";
    }
    
    public String view(Death d){
        cBean.setId(d.getMemberid().getId());
        Catholic c = this.catholicFacade.find(d.getMemberid().getId());
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
        
        csBean.setId(d.getSpouseMemberID());
        Catholic cs = this.catholicFacade.find(d.getSpouseMemberID());
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
        
        dBean.setId(d.getId());
        dBean.setDateOfBurial(d.getDateOfBurial());
        dBean.setDod(d.getDod());
        dBean.setMemberid(d.getMemberid().getId());
        dBean.setMinisterid(d.getMinisterid().getId());
        dBean.setParishid(d.getParishid().getId());
        dBean.setPlaceOfBurial(d.getPlaceOfBurial());
        dBean.setPlaceOfDeath(d.getPlaceOfDeath());
        dBean.setSacramentAdministered(d.getSacramentAdministered());
        dBean.setSpouseMemberID(d.getSpouseMemberID());
        return "viewdeath";
    }
    
    public String edit(){
        Death d = new Death(dBean.getId());
        d.setDateOfBurial(dBean.getDateOfBurial());
        d.setDod(dBean.getDod());
        d.setPlaceOfBurial(dBean.getPlaceOfBurial());
        d.setPlaceOfDeath(dBean.getPlaceOfDeath());
        d.setSacramentAdministered(dBean.getSacramentAdministered());
        Minister m = this.ministerFacade.find(dBean.getMinisterid());
        Catholic c = this.catholicFacade.find(cBean.getId());
        Parish p = this.parishFacade.find(dBean.getParishid());
        User u = this.userFacade.find(2);
        d.setMemberid(c);
        d.setMinisterid(m);
        d.setParishid(p);
        d.setUserid(u);
        d.setSpouseMemberID(csBean.getId());
        this.deathFacade.edit(d);
        return "death";
    }
}
