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
    
}
