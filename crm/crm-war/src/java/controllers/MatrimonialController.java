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
    
}
