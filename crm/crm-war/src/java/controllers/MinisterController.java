/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Minister;
import java.util.List;
import javax.ejb.EJB;
import models.MinisterFacade;

/**
 *
 * @author Lyne
 */
public class MinisterController {
    @EJB
    private MinisterFacade ministerFacade;
    
    private Minister m = new Minister();

    public Minister getM() {
        return m;
    }

    public void setM(Minister m) {
        this.m = m;
    }
        
    public MinisterController() {
    }
    
    public List<Minister> getAll(){
        return this.ministerFacade.findAll();
    }
    
    public String add(){
        this.ministerFacade.create(m);
        m = new Minister();
        return "config";
    }
    
}
