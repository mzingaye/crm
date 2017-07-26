/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.BaptismBean;
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

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "baptism")
@SessionScoped
public class BaptismController implements Serializable {
    @EJB
    private BaptismFacade baptismFacade;
    
    @Inject
    private BaptismBean bBean;
    
    public BaptismController() {

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
        b.setBaptismNumber(bBean.getBaptismNumber());
        b.setPhysicalAddress(bBean.getPhysicalAddress());
        b.setUserid(u);
        b.setMemberid(c);
        b.setParishid(p);
        b.setMinisterid(m);
        b.setSponsorid(s);
        this.baptismFacade.create(b);
        return "baptism";
    }
    
    
}
