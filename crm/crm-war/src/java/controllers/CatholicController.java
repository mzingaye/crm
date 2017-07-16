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
 
    
    private Catholic c;

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }
    
    public CatholicController() {
        this.c = new Catholic();
    }

    public CatholicController(Catholic c) {
        this.c = c;
    }

    public List<Catholic> getAll(){
        return this.catholicFacade.findAll();
    }
    
    public String add(){
        UsersController uc = new UsersController();
        //User u = uc.get(2);
        User u = this.userFacade.find(2);
        c.setUserid(u);
        this.catholicFacade.create(c);
        System.out.println("Name => "+c.getFname()+" ID => "+c.getId());
        //c = new Catholic();
        return null;
    }
    
    public String nextBapt(){
         User u = this.userFacade.find(2);
        c.setUserid(u);
        this.catholicFacade.create(c);
        System.out.println("Name from Catholic => "+c.getFname()+" ID => "+c.getId());
        return "sponsor";
    }
   
    
}
