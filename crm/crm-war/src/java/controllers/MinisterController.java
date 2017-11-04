/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.UserBean;
import entities.Minister;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.MinisterFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class MinisterController implements Serializable {
    @EJB
    private MinisterFacade ministerFacade;
    @Inject
    private UserBean uBean;
    
    private Minister m = new Minister();
    
    Logger log = Logger.getLogger(MinisterController.class);

    public Minister getM() {
        return m;
    }

    public void setM(Minister m) {
        this.m = m;
    }
        
    public MinisterController() {
    }
    
    public Minister get(int id){
        return this.ministerFacade.find(id);
    }
    
    public List<Minister> getAll(){
        return this.ministerFacade.findAll();
    }
    
    public String add(){
        try{
            this.ministerFacade.create(m);
            log.info("Minister "+m.getId()+" created successfully by System User: "+uBean.getUsername());
            m = new Minister();
        }
        catch(Exception e){
            log.error("Constraint violation when adding new minister : "+e);
        }
        return "config";
    }
    
    public String view(Minister m){
        this.m = m;
        return "viewminister";
    }
    
     public String edit(){
        try{
            this.ministerFacade.edit(m);
            log.info("Minister "+m.getId()+" updated successfully by System User: "+uBean.getUsername());
            m = new Minister();
        }
        catch(Exception e){
            log.error("Constraint violation when updating minister #"+m.getId()+" : "+e);
        }
        return "config";
    }
     
    public String cancel(){
        this.m = new Minister();
        return "config";
    }
    
    public String delete(Minister m){
        this.m = m;
        this.ministerFacade.remove(this.m);
        log.info("Minister "+m.getId()+" deleted successfully by System User: "+uBean.getUsername());
        return "config";
    }
    
}
