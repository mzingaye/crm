/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Catholic;
import entities.Sponsor;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedProperty;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class SponsorController {
    @EJB
    private SponsorFacade sponsorFacade;
    
    @ManagedProperty(value="#{catholic}")
    private CatholicController cc;
    
    private Catholic c;
    
    private int sponsorId;

    public int getSponsorId() {
        return sponsorId;
    }

    public void setSponsorId(int sponsorId) {
        this.sponsorId = sponsorId;
    }

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }

    private Sponsor s;

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }
    
    public SponsorController() {
        this.s = new Sponsor();
    }

    public SponsorController(Sponsor s) {
        this.s = s;
    }
    
    public List<Sponsor> getAll(){
        return this.sponsorFacade.findAll();
    }
    
    public String add(){
        this.sponsorFacade.create(this.s);
       // s = new Sponsor();
        return null;
    }
    
    public String nextBapt(){
        this.sponsorFacade.create(s);
        System.out.println("Sponsor Name => "+s.getFname()+"Sponsor ID => "+s.getId());
        return "newBaptism";
    }
    
    public String search(){
        return null;
    }
}
