/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Confirmation;
import java.util.List;
import javax.ejb.EJB;
import models.ConfirmationFacade;

/**
 *
 * @author Lyne
 */
public class ConfirmationController {
    @EJB
    private ConfirmationFacade confirmationFacade;

    private Confirmation c;
    
    private int ministerId;
    
    private int parishId;
    
    private int sponsorId;

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

    public int getSponsorId() {
        return sponsorId;
    }

    public void setSponsorId(int sponsorId) {
        this.sponsorId = sponsorId;
    }
    
    public Confirmation getC() {
        return c;
    }

    public void setC(Confirmation c) {
        this.c = c;
    }
    
    public ConfirmationController() {
    }
    
    public List<Confirmation> getall(){
        return this.confirmationFacade.findAll();
    }
    
    public String add(){
        return null;
    }
}
