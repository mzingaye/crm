/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicBean;
import beans.CatholicSpouseBean;
import beans.ConfirmationBean;
import entities.Catholic;
import entities.User;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class CatholicController {
    
    @EJB
    private UserFacade userFacade;
    
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private ConfirmationFacade conFacade;
    
    @EJB
    private BaptismFacade baptismFacade;
    
    @Inject
    private CatholicBean cBean;
    @Inject
    private ConfirmationBean conBean;
    
    @Inject
    private CatholicSpouseBean csBean;
       
    public CatholicController() {
    }

    public List<Catholic> getAll(){
        return this.catholicFacade.findAll();
    }
    
    public String newMember(){
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
        return "addmember";
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
        return "catholics";
    }
    
    public String nextBapt(){
        
        return "sponsor";
    }
    
    public String search(){
        Catholic c = this.catholicFacade.find(cBean.getId());
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
        
        conBean.setBaptizedBy(this.baptismFacade.findMember(c).getMinisterid().getFname()+" "+this.baptismFacade.findMember(c).getMinisterid().getLname());
        return null;
    }
    
    public String searchSpouse(){
        Catholic c = this.catholicFacade.find(csBean.getId());
        csBean.setFname(c.getFname());
        csBean.setMname(c.getMname());
        csBean.setLname(c.getLname());
        csBean.setSex(c.getSex());
        csBean.setDob(c.getDob());
        csBean.setAge(c.getAge());
        csBean.setPlaceOfBirth(c.getPlaceOfBirth());
        csBean.setNatID(c.getNatID());
        csBean.setContact(c.getContact());
        csBean.setFfname(c.getFfname());
        csBean.setFmname(c.getFmname());
        csBean.setFlname(c.getFlname());
        csBean.setFnatID(c.getFnatID());
        csBean.setMfname(c.getMfname());
        csBean.setMmname(c.getMmname());
        csBean.setMlname(c.getMlname());
        csBean.setMnatID(c.getMnatID());
        return null;
    }
   
    
}
