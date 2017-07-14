/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Sponsor;
import java.util.List;
import javax.ejb.EJB;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class SponsorController {
    @EJB
    private SponsorFacade sponsorFacade;

    private Sponsor s = new Sponsor();

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }
    
    public SponsorController() {
    }
    
    public List<Sponsor> getAll(){
        return this.sponsorFacade.findAll();
    }
    
    public String add(){
        this.sponsorFacade.create(this.s);
        s = new Sponsor();
        return "newBaptism";
    }
    
}
