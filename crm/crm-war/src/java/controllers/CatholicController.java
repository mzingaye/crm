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
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "catholic")
@SessionScoped
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
        this.c = new Catholic();
    }

    public List<Catholic> getAll(){
        return this.catholicFacade.findAll();
    }
    
    public int count(){
        return this.catholicFacade.count();
    }
    
    public String newMember(){
        this.c = new Catholic();
        return "addmember";
    }
    
    public String add(){
        FacesContext context = FacesContext.getCurrentInstance();
        
        try{
            this.c.setUserid(this.userFacade.find(uBean.getId()));
            this.catholicFacade.create(this.c);
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Member [ "+c.getId()+" ]  created successfully!");
            this.c = new Catholic();  
            context.addMessage("update", new FacesMessage(FacesMessage.SEVERITY_INFO, "Member "+c.getId()+"created!", null));
        
        }
        catch(ConstraintViolationException e){
            log.error("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Constraint violation when adding new catholic : "+e.getConstraintViolations());
            for(ConstraintViolation violation : e.getConstraintViolations()) {
                System.out.println(violation.getMessage());
            }
            context.addMessage("update", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Member "+c.getId()+"failed!", null));
        }
        catch(Exception ex){
            log.error("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Exception occurred when adding new member : "+ex);
            context.addMessage("update", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Member failed!", null));
            ex.printStackTrace();
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
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Member [ "+c.getId()+" ]  updated successfully!");
            c = new Catholic();
        }
        catch(Exception e){
            log.error("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Constraint violation when updating member #"+c.getId()+" : "+e);
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
        log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Member [ "+c.getId()+" ]  deleted successfully!");
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
