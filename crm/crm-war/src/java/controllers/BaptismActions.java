/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.Baptism;
import entities.Catholic;
import entities.Sponsor;
import javax.ejb.EJB;
import models.BaptismFacade;
import models.CatholicFacade;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class BaptismActions {
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private BaptismFacade baptismFacade;

    private Catholic c = new Catholic();
    
    private Sponsor s = new Sponsor();
    
    private Baptism b = new Baptism();

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }

    public Baptism getB() {
        return b;
    }

    public void setB(Baptism b) {
        this.b = b;
    }
    
    public BaptismActions() {
    }
    
    public String add(){
        this.catholicFacade.create(c);
        this.sponsorFacade.create(s);
        b.setMemberid(c);
        b.setSponsorid(s);
        this.baptismFacade.create(b);
        c = new Catholic();
        s = new Sponsor();
        b = new Baptism();
        return "baptism";
    }
}
