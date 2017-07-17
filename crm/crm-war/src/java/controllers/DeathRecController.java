/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Death;
import java.util.List;
import javax.ejb.EJB;
import models.DeathFacade;

/**
 *
 * @author Lyne
 */
public class DeathRecController {
    @EJB
    private DeathFacade deathFacade;
    
    private Death d;
    
    private int parishId;
    
    private int ministerId;

    public int getParishId() {
        return parishId;
    }

    public void setParishId(int parishId) {
        this.parishId = parishId;
    }

    public int getMinisterId() {
        return ministerId;
    }

    public void setMinisterId(int ministerId) {
        this.ministerId = ministerId;
    }
    

    public Death getD() {
        return d;
    }

    public void setD(Death d) {
        this.d = d;
    }
    
    public DeathRecController() {
    }
    
    public List<Death> getAll(){
        return this.deathFacade.findAll();
    }
    
    public String add(){
        return null;
    }
    
}
