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
import java.util.ArrayList;
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
    private String value = "";
    
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
    
    private int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void search(){
        value = "value";
        getValue();  
    }
    
    public void clear(){
        this.c.setId(0);
        this.c.setFname(null);
        this.c.setLname(null);
        this.c.setSex(null);
        this.c.setDob(null);
        this.c.setContact(null);
        this.value = "";
    }
    
    private List<Catholic> list;

    public List<Catholic> getList() {
        return list;
    }

    public void setList(List<Catholic> list) {
        this.list = list;
    }
  
    public List<Catholic> getValue(){
        switch(value){
            case "value":
                try{
                    if(this.c.getId() != 0){
                        List<Catholic> list = new ArrayList<>();
                        list.add(this.catholicFacade.find(this.c.getId()));
                        setList(list); 
                        break;
                    }
                    if(this.c.getFname() != null){
                        setList(this.catholicFacade.findByFname(this.c.getFname()));
                        break; 
                    }
                    if(this.c.getLname() != null){
                        setList(this.catholicFacade.findByLname(this.c.getLname()));
                       break; 
                    }
                    if(this.c.getSex() != null){
                        setList(this.catholicFacade.findBySex(this.c.getSex()));
                       break; 
                    }
                    if(this.c.getDob()!= null){
                        setList(this.catholicFacade.findByDob(this.c.getDob()));
                       break; 
                    }
                    if(this.c.getContact()!= null){
                        setList(this.catholicFacade.findByContact(this.c.getContact()));
                       break; 
                    }
                }
                catch(NullPointerException E){
                    if(this.c.getFname() != null){
                        setList(this.catholicFacade.findByFname(this.c.getFname()));
                       break; 
                    }
                    if(this.c.getLname() != null){
                        setList(this.catholicFacade.findByLname(this.c.getLname()));
                       break; 
                    }
                    if(this.c.getSex() != null){
                        setList(this.catholicFacade.findBySex(this.c.getSex()));
                       break; 
                    }
                    if(this.c.getDob()!= null){
                        setList(this.catholicFacade.findByDob(this.c.getDob()));
                       break; 
                    }
                    if(this.c.getContact()!= null){
                        setList(this.catholicFacade.findByContact(this.c.getContact()));
                       break; 
                    }
                }
                
            default:
                setList(this.catholicFacade.findAll());
                break;
        }
        this.count = this.list.size();
        return this.list;
       
    }
}
