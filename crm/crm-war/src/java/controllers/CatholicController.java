/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Catholic;
import entities.User;
import java.util.List;
import javax.ejb.EJB;
import models.CatholicFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class CatholicController {
    @EJB
    private UserFacade userFacade;
    
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
        User u = userFacade.find(1);
        c.setUserid(u);
        this.catholicFacade.create(c);
        //c = new Catholic();
        return "sponsor";
    }
   
    
}
