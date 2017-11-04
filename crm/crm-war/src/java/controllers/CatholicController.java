/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicBean;
import beans.CatholicSpouseBean;
import beans.ConfirmationBean;
import beans.UserBean;
import entities.Catholic;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class CatholicController implements Serializable {
    
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
    private UserBean uBean;
    
    @Inject
    private ConfirmationBean conBean;
    
    @Inject
    private CatholicSpouseBean csBean;
    
    Logger log = Logger.getLogger(CatholicController.class);
    
    private Catholic c;

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }
       
    public CatholicController() {
    }

    public List<Catholic> getAll(){
        return this.catholicFacade.findAll();
    }
    
    public String newMember(){
        this.c = new Catholic();
        return "addmember";
    }
    
    public String add(){
        try{
            this.c.setUserid(this.userFacade.find(uBean.getId()));
            this.catholicFacade.create(this.c);
            log.info("Member "+c.getId()+" created successfully by System User: "+uBean.getUsername());
            this.c = new Catholic();  
        }
        catch(Exception e){
            log.error("Constraint violation when adding new catholic : "+e);
        }
        return "catholics";
    }
    
    public String view(Catholic c){
        this.c = c;
        return "viewcatholic";
    }
    
     public String edit(){
        try{
            this.catholicFacade.edit(this.c);
            log.info("Member "+c.getId()+" updated successfully by System User: "+uBean.getUsername());
            c = new Catholic();
        }
        catch(Exception e){
            log.error("Constraint violation when updating member #"+c.getId()+" : "+e);
        }
        return "catholics";
    }
     
    public String cancel(){
        this.c = new Catholic();
        return "catholics";
    }
    
    public String delete(Catholic c){
        this.c = c;
        this.catholicFacade.remove(this.c);
        log.info("Member "+c.getId()+" deleted successfully by System User: "+uBean.getUsername());
        return "catholic";
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
        
        //conBean.setBaptizedBy(this.baptismFacade.findMember(c).getMinisterid().getFname()+" "+this.baptismFacade.findMember(c).getMinisterid().getLname());
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
