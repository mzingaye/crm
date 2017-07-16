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
import javax.faces.bean.ManagedProperty;
import models.BaptismFacade;
import models.CatholicFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class BaptismActions {
    
    @ManagedProperty(value="#{catholic}")
    private CatholicController catholic;
    @EJB
    private MinisterFacade ministerFacade;
    @EJB
    private ParishFacade parishFacade;
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private BaptismFacade baptismFacade;

    private Catholic c;
    
    private Sponsor s = new Sponsor();
    
    private Baptism b = new Baptism();
    
    private int parishId;
    
    private int ministerId;

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
        System.out.println("Catholic Name => "+catholic.getC().getFname()+" "+catholic.getC().getLname()+" Catholic ID => "+catholic.getC().getId());
        //System.out.println("Minister ID => "+getMinisterId()+" "+c.getLname()+" Parish ID => "+getParishId());
        //CatholicController cc = new CatholicController(c);
        //cc.add();
        //SponsorController sc = new SponsorController(s);
        //sc.add();
        //b.setMemberid(catholic.getC());
        //b.setSponsorid(s);
        //b.setMinisterid(this.ministerFacade.find(getMinisterId()));
        //b.setParishid(this.parishFacade.find(getParishId()));
        //BaptismController bc = new BaptismController(b);
        //bc.add();
        return "baptism";
    }
}
