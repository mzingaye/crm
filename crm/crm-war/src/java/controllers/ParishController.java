/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import models.ParishFacade;
import java.util.*;
import entities.*;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "parish")
@SessionScoped
public class ParishController {
    @EJB
    private ParishFacade parishFacade;
    private Parish p = new Parish();

    public Parish getP() {
        return p;
    }

    public void setP(Parish p) {
        this.p = p;
    }
    
    public ParishController() {
    }
    
    public List<Parish> getAll(){
        return this.parishFacade.findAll();
    }
    
    public String add(){
        this.parishFacade.create(p);
        p = new Parish();
        return "config";
    }
    
}
