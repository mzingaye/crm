/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Baptism;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import models.BaptismFacade;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "baptism")
@SessionScoped
public class BaptismController implements Serializable {
    @EJB
    private BaptismFacade baptismFacade;

    private Baptism b = new Baptism();

    public Baptism getB() {
        return b;
    }

    public void setB(Baptism b) {
        this.b = b;
    }
    
    public BaptismController() {
    }
    
    public List<Baptism> getAll(){
        return this.baptismFacade.findAll();
    }
    
    public String add(){
        this.baptismFacade.create(this.b);
        this.b = new Baptism();
        return "baptism";
    }
}
