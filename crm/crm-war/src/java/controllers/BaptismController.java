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
import javax.ejb.EJBException;
import javax.inject.Inject;
import javax.persistence.NoResultException;
import javax.swing.JOptionPane;
import models.BaptismFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

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
    
    static final Logger LOG = Logger.getLogger(BaptismController.class);
    
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
    public int count(){
        return this.baptismFacade.count();
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
        /*try{
            this.baptismFacade.findMember(c);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  can only be baptized once!");
            return "catholics";
        }
        catch(NoResultException no){
            
        }
        catch(EJBException e){*/
            b.setMemberid(c);
            b.setMinisterid(this.ministerFacade.find(ministerid));
            b.setParishid(this.parishFacade.find(parishid));
            b.setSponsorid(s);
            b.setUserid(this.userFacade.find(uBean.getId()));
            this.baptismFacade.create(this.b);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  baptism record ["+b.getId()+"] added successfully!");
            this.c = new Catholic();
            this.s = new Sponsor();
            this.b = new Baptism(); 
            return "baptism";
        //}
        // return null;
    }
    
    public String edit(){
        b.setMinisterid(this.ministerFacade.find(ministerid));
        b.setParishid(this.parishFacade.find(parishid));
        b.setSponsorid(s);
        b.setUserid(this.userFacade.find(uBean.getId()));
        this.baptismFacade.edit(this.b);
        this.c = new Catholic();
        this.s = new Sponsor();
        this.b = new Baptism();
        return "baptism";
    }
    
    public String newBaptism(Catholic c){
       // try{
            Baptism b = this.baptismFacade.findMember(c);
            if(b != null){
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  can only be baptized once!");
                return null;
            }
            else{
                this.c = c;
                this.s = new Sponsor();
                this.b = new Baptism();
                this.ministerid = 0;
                this.parishid = 0;
                return "newBaptism";
            }
        /*}
        catch(Exception no){
            this.c = c;
            this.s = new Sponsor();
            this.b = new Baptism();
            this.ministerid = 0;
            this.parishid = 0;
            return "newBaptism";
        }*/
    }
    
    public void findSponsor(Sponsor s){
        this.s = s;
    }
    
    public String view(Baptism b){
        this.b = b;
        this.c = b.getMemberid();
        this.s = b.getSponsorid();
        this.ministerid = b.getMinisterid().getId();
        this.parishid = b.getParishid().getId();
        return "viewbaptism";
    }
    
    public void delete(Baptism b){
        try{
            //int del = JOptionPane.showConfirmDialog(null, "");
            //if(del == 1){
                this.baptismFacade.remove(b);
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+b.getMemberid().getId()+" : "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+" deleted succesfful!");
            //}
        }
        catch(Exception e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Baptism Record. No "+b.getId()+" cannot be deleted due to Error :"+e);
        }
    }
    
}
