/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.BaptismBean;
import beans.ReportsBean;
import entities.Baptism;
import entities.Catholic;
import entities.Confirmation;
import entities.Death;
import entities.Matrimonial;
import entities.Sponsor;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.inject.Inject;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.DeathFacade;
import models.MatrimonialFacade;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
@ManagedBean(name="reports")
@RequestScoped
public class ReportsController implements Serializable {
    @Inject
    private BaptismBean b;
    @Inject
    private ReportsBean reportsBean;
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private MatrimonialFacade matrimonialFacade;
    @EJB
    private DeathFacade deathFacade;
    @EJB
    private ConfirmationFacade confirmationFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private BaptismFacade baptismFacade;
    
    private String r_type;
    
    private String r_period;

    public String getR_type() {
        return r_type;
    }

    public void setR_type(String r_type) {
        this.r_type = r_type;
    }

    public String getR_period() {
        return r_period;
    }

    public void setR_period(String r_period) {
        this.r_period = r_period;
    }
    
    private Object obj;

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
    
    private List<ReportsBean> rep;

    public List<ReportsBean> getRep() {
        return rep;
    }

    public void setRep(List<ReportsBean> rep) {
        this.rep = rep;
    }
    

    public ReportsController() {
    }
    
    /*public String view(int i){
        switch(this.r_type){
            case "catholic":
                
                
                break;
            case "sponsor":
                
                break;
            case "baptism":
                System.out.println("The id passed is here: "+i);
                Baptism c = baptismFacade.find(i);
                b.setBaptismNumber(c.getBaptismNumber());
                b.setCname(c.getCname());
                b.setDateOfBaptism(c.getDateOfBaptism());
                b.setFirstCommunion(c.getFirstCommunion());
                b.setMemberid(c.getMemberid());
                b.setMinisterid(c.getMinisterid());
                b.setParishid(c.getParishid().getId());
                b.setPhysicalAddress(c.getPhysicalAddress());
                b.setSponsorid(c.getSponsorid());
                
                break;
            case "confirmation":
                
                break;
            case "matrimonial":
                
                break;
            case "death":
                
                break;
            default:
                break;
        }
        b = new BaptismBean();
        return "baptism_report";
    }
    */
    public void generate(){
        switch(this.r_type){
            case "catholic":
                rep = new ArrayList<>();
                for(Catholic c : catholicFacade.findAll()){
                   reportsBean.setId(c.getId());
                   reportsBean.setName(c.getFname()+" "+c.getLname()+" "+c.getNatID()+" "+c.getDob());
                   reportsBean.setDate(c.getCreatedAt());
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            case "sponsor":
                rep = new ArrayList<>();
                for(Sponsor c : sponsorFacade.findAll()){
                   reportsBean.setId(c.getId());
                   reportsBean.setName(c.getFname()+" "+c.getLname()+" "+c.getNatID()+" "+c.getDob());
                   reportsBean.setDate(c.getCreatedAt());
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            case "baptism":
                rep = new ArrayList<>();
                for(Baptism c : baptismFacade.findAll()){
                   reportsBean.setId(c.getId());
                   reportsBean.setName(c.getCname()+" "+c.getMemberid().getFname()+" "+c.getMemberid().getLname());//+" "+c.getBaptismNumber()+" "+c.getFirstCommunion());
                   reportsBean.setDate(c.getDateOfBaptism());
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            case "confirmation":
                rep = new ArrayList<>();
                for(Confirmation c : confirmationFacade.findAll()){
                   reportsBean.setId(c.getId());
                   //reportsBean.setName(c.getMemberid().getFname()+" "+c.getMemberid().getLname()+" "+c.getMemberid().getNatID());
                   reportsBean.setDate(c.getDateOfConfirmation());
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            case "matrimonial":
                rep = new ArrayList<>();
                for(Matrimonial c : matrimonialFacade.findAll()){
                   reportsBean.setId(c.getId());
                   //reportsBean.setName(c.getMarriageNumber()+" "+catholicFacade.find(c.getHusbandMemberID()).getFname()+" "+catholicFacade.find(c.getHusbandMemberID()).getLname()+" "+catholicFacade.find(c.getWifeMemberID()).getFname()+" "+catholicFacade.find(c.getWifeMemberID()).getLname());
                   reportsBean.setDate(c.getDateOfMarriage());
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            case "death":
                rep = new ArrayList<>();
                for(Death c : deathFacade.findAll()){
                   reportsBean.setId(c.getId());
                   /*reportsBean.setName(c.getMemberid().getFname()+" "+c.getMemberid().getLname()+" "+c.getMemberid().getNatID()+" "+catholicFacade.find(c.getSpouseMemberID()).getFname()+" "+catholicFacade.find(c.getSpouseMemberID()).getLname());
                   reportsBean.setDate(c.getDod());*/
                   rep.add(reportsBean);
                   reportsBean = new ReportsBean();
                }
                break;
            default:
                break;
        }
    }
    
    
}
