/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.UserBean;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import models.ParishFacade;
import java.util.*;
import entities.*;
import java.io.Serializable;
import javax.inject.Inject;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "parish")
@SessionScoped
public class ParishController implements Serializable {
    @EJB
    private ParishFacade parishFacade;
    
    @Inject
    private UserBean uBean;
    
    Logger log = Logger.getLogger(ParishController.class);
    
    private Parish p = new Parish();

    public Parish getP() {
        return p;
    }

    public void setP(Parish p) {
        this.p = p;
    }
    
    public ParishController() {
    }
    
    public Parish get(int id){
        return this.parishFacade.find(id);
    }
    
    public List<Parish> getAll(){
        return this.parishFacade.findAll();
    }
    
    public String add(){
        try{
            this.parishFacade.create(p);
            log.info("Parish "+p.getId()+" created successfully by System User: "+uBean.getUsername());
            p = new Parish();
        }
        catch(Exception e){
            log.error("Constraint violation when adding new parish : "+e);
        }
        return "config";
    }
    
    public String view(Parish p){
        this.p = p;
        return "viewparish";
    }
    
     public String edit(){
        try{
            this.parishFacade.edit(p);
            log.info("Parish "+p.getId()+" updated successfully by System User: "+uBean.getUsername());
            p = new Parish();
        }
        catch(Exception e){
            log.error("Constraint violation when updating parish #"+p.getId()+" : "+e);
        }
        
        return "config";
    }
     
    public String cancel(){
        this.p = new Parish();
        return "config";
    }
    
    public String delete(Parish p){
        this.p = p;
        this.parishFacade.remove(this.p);
        log.info("Parish "+p.getId()+" deleted successfully by System User: "+uBean.getUsername());
        return "config";
    }
    
}
