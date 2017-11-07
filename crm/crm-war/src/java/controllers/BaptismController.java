/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.BaptismBean;
import beans.UserBean;
import entities.Baptism;
import entities.Catholic;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import entities.User;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.BaptismFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "baptism")
@SessionScoped
public class BaptismController implements Serializable {

    @EJB
    private UserFacade userFacade;

    @EJB
    private ParishFacade parishFacade;

    @EJB
    private MinisterFacade ministerFacade;

    @EJB
    private BaptismFacade baptismFacade;
    
    @Inject
    private BaptismBean bBean;
    
    @Inject 
    private UserBean uBean;
    
    private Baptism b;
    
    private Catholic c;
    
    private Sponsor s;

    public Sponsor getS() {
        return s;
    }

    public void setS(Sponsor s) {
        this.s = s;
    }

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }

    public Baptism getB() {
        return b;
    }

    public void setB(Baptism b) {
        this.b = b;
    }
    
    public BaptismController() {
        this.b = new Baptism();
    }
    
    public List<Baptism> getAll(){
        return this.baptismFacade.findAll();
    }
    
    public List<Baptism> getCname(String cname){
        return this.baptismFacade.findByCname(cname);
    }
    public List<Baptism> getDateOfBaptism(){
        return this.baptismFacade.findByDateOfBaptism((Date)this.bBean.getDateOfBaptism());
    }
    public List<Baptism> getFirstCommunion(Date firstCommunion){
        return this.baptismFacade.findByFirstCommunion(firstCommunion);
    }
    
    public String searchCname(){
       return "searchbapt";
    }
    public String searchDateOfBaptism(){
       return "searchbaptdob";
    }
    public String searchFirstCommunion(){
       return "searchbaptfc";
    }
    
    public String add(Catholic c, Parish p, User u, Minister m, Sponsor s){
        Baptism b = new Baptism();
        b.setCname(bBean.getCname());
        b.setDateOfBaptism(bBean.getDateOfBaptism());
        b.setFirstCommunion(bBean.getFirstCommunion());
        //b.setBaptismNumber(bBean.getBaptismNumber());
        b.setPhysicalAddress(bBean.getPhysicalAddress());
        b.setUserid(u);
        b.setMemberid(c);
        b.setParishid(p);
        b.setMinisterid(m);
        b.setSponsorid(s);
        this.baptismFacade.create(b);
        return "baptism";
    }
    
    private int ministerid;
    private int parishid;

    public int getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(int ministerid) {
        this.ministerid = ministerid;
    }

    public int getParishid() {
        return parishid;
    }

    public void setParishid(int parishid) {
        this.parishid = parishid;
    }
    
    public String add(){
        b.setMemberid(c);
        b.setMinisterid(this.ministerFacade.find(ministerid));
        b.setParishid(this.parishFacade.find(parishid));
        b.setSponsorid(s);
        b.setUserid(this.userFacade.find(uBean.getId()));
        this.baptismFacade.create(this.b);
        this.c = new Catholic();
        this.s = new Sponsor();
        this.b = new Baptism();
        return "baptism";
    }
    
    public String newBaptism(Catholic c){
        this.c = c;
        return "newBaptism";
    }
    
    public void findSponsor(Sponsor s){
        this.s = s;
    }
    
    
}
