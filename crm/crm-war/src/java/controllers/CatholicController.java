/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Catholic;
import javax.faces.bean.SessionScoped;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import models.CatholicFacade;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "catholic")
@SessionScoped
public class CatholicController{
    @EJB
    private CatholicFacade catholicFacade;
    
    private Catholic c = new Catholic();

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }
    
    public CatholicController() {
    }
    
    public List<Catholic> getAll(){
        return this.catholicFacade.findAll();
    }
    
    public String add(){
        this.catholicFacade.create(c);
        c = new Catholic();
        return "index";
    }
    
}
