/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Matrimonial;
import java.util.List;
import javax.ejb.EJB;
import models.MatrimonialFacade;

/**
 *
 * @author Lyne
 */
public class MatrimonialController {
    @EJB
    private MatrimonialFacade matrimonialFacade;
    
    private int ministerId;
    
    private int parishId;

    public int getMinisterId() {
        return ministerId;
    }

    public void setMinisterId(int ministerId) {
        this.ministerId = ministerId;
    }

    public int getParishId() {
        return parishId;
    }

    public void setParishId(int parishId) {
        this.parishId = parishId;
    }

    private Matrimonial m;

    public Matrimonial getM() {
        return m;
    }

    public void setM(Matrimonial m) {
        this.m = m;
    }
    
    public MatrimonialController() {
    }
    
    public List<Matrimonial> getAll(){
        return this.matrimonialFacade.findAll();
    }
    
    public String add(){
        return null;
    }
    
}
