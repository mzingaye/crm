/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.CatholicSpouseBean;
import beans.MatrimonialBean;
import beans.SponsorBean;
import beans.SponsorSpouseBean;
import beans.UserBean;
import entities.Baptism;
import entities.Catholic;
import entities.Matrimonial;
import entities.Sponsor;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import models.CatholicFacade;
import models.MatrimonialFacade;
import models.MinisterFacade;
import models.ParishFacade;
import models.SponsorFacade;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class MatrimonialController implements Serializable  {
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private ParishFacade parishFacade;
    @EJB
    private UserFacade userFacade;
    @EJB
    private MinisterFacade ministerFacade;
    
    @EJB
    private MatrimonialFacade matrimonialFacade;
    
    @Inject
    private MatrimonialBean mBean;
    
    @Inject
    private UserBean uBean;
    
    @Inject
    private CatholicSpouseBean csBean;
    
    @Inject 
    private SponsorBean sBean;
    
    @Inject
    private SponsorSpouseBean ssBean;
    
    private Catholic c;
    private Baptism b;
    private Baptism bs;
    private Sponsor sh;
    private Sponsor sw;
    private String spousename;
    private String spousenatid;
    private String spousesex;
    private Date spousedob;
    private String spouseage;
    private Matrimonial m;
    private int ministerid;
    private int parishid;
    static final Logger LOG = Logger.getLogger(MatrimonialController.class);

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

    public String getSpousename() {
        return spousename;
    }

    public void setSpousename(String spousename) {
        this.spousename = spousename;
    }

    public String getSpousenatid() {
        return spousenatid;
    }

    public void setSpousenatid(String spousenatid) {
        this.spousenatid = spousenatid;
    }

    public String getSpousesex() {
        return spousesex;
    }

    public void setSpousesex(String spousesex) {
        this.spousesex = spousesex;
    }

    public Date getSpousedob() {
        return spousedob;
    }

    public void setSpousedob(Date spousedob) {
        this.spousedob = spousedob;
    }

    public String getSpouseage() {
        return spouseage;
    }

    public void setSpouseage(String spouseage) {
        this.spouseage = spouseage;
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

    public Baptism getBs() {
        return bs;
    }

    public void setBs(Baptism bs) {
        this.bs = bs;
    }

    public Sponsor getSh() {
        return sh;
    }

    public void setSh(Sponsor sh) {
        this.sh = sh;
    }

    public Sponsor getSw() {
        return sw;
    }

    public void setSw(Sponsor sw) {
        this.sw = sw;
    }

    public Matrimonial getM() {
        return m;
    }

    public void setM(Matrimonial m) {
        this.m = m;
    }
    
    
    public MatrimonialController() {
        this.m = new Matrimonial();
    }
    
    public void findMember(Catholic c){
        this.spousename = c.getFname().concat(" ").concat(c.getLname());
        this.spousenatid = c.getNatID();
        this.spousedob = c.getDob();
        this.spouseage = c.getAge()+"";
        this.spousesex = c.getSex();
    }
    public void findBaptism(Baptism b){
        this.bs = b;
        this.spousename = b.getMemberid().getFname().concat(" ").concat(b.getMemberid().getLname());
        this.spousenatid = b.getMemberid().getNatID();
        this.spousedob = b.getMemberid().getDob();
        this.spouseage = b.getMemberid().getAge()+"";
        this.spousesex = b.getMemberid().getSex();
    }
    public void findSponsor(Sponsor sw){
        this.sw = sw;
    }
    public void findHusSponsor(Sponsor sh){
        this.sh = sh;
    }
    
    public String newRec(Baptism b){
        this.b = b;
        this.m = new Matrimonial();
        this.sh = new Sponsor();
        this.sw = new Sponsor();
        return "creatematrimonialrec";
    }
    
    public List<Matrimonial> getAll(){
        return this.matrimonialFacade.findAll();
    }
    
    public String add(){
        m.setHusbandSponsorID(sh.getId());
        m.setWifeSponsorID(sw.getId());
        m.setParishid(this.parishFacade.find(parishid));
        m.setMinisterid(this.ministerFacade.find(ministerid));
        m.setUserid(this.userFacade.find(uBean.getId()));
        m.setSpouse(spousename);
        m.setBaptismid(b);
        try{
            this.matrimonialFacade.create(this.m);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Marriage [ "+m.getId()+" ] Between "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  and "+spousename+" added successfully!");
            this.c = new Catholic();
            this.sw = new Sponsor();
            this.sh = new Sponsor();
            this.b = new Baptism(); 
            this.m = new Matrimonial();
            return "matrimonial";
        }
        catch(Exception e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Marriage Between "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  and "+spousename+" was not added due to an error: "+e+"!");
            return null;
        }
        
    }
    
    public String view(Matrimonial m){
        this.m = m;
        this.sh = this.sponsorFacade.find(m.getHusbandSponsorID());
        this.sw = this.sponsorFacade.find(m.getWifeSponsorID());
        this.spousename = m.getSpouse();
        this.b = m.getBaptismid();
        this.ministerid = m.getMinisterid().getId();
        this.parishid = m.getParishid().getId();
        return "viewmatrimonial";
    }
    
    public String edit(){
        m.setHusbandSponsorID(sh.getId());
        m.setWifeSponsorID(sw.getId());
        m.setParishid(this.parishFacade.find(parishid));
        m.setMinisterid(this.ministerFacade.find(ministerid));
        m.setUserid(this.userFacade.find(uBean.getId()));
        m.setSpouse(spousename);
        m.setBaptismid(b);
        try{
            this.matrimonialFacade.edit(this.m);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Marriage [ "+m.getId()+" ] Between "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  and "+spousename+" updated successfully!");
            this.c = new Catholic();
            this.sw = new Sponsor();
            this.sh = new Sponsor();
            this.b = new Baptism(); 
            this.m = new Matrimonial();
            return "matrimonial";
        }
        catch(Exception e){
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Marriage Between "+b.getMemberid().getFname()+" "+b.getMemberid().getLname()+"  and "+spousename+" was not updated due to an error: "+e+"!");
            return null;
        }
        
        /*Matrimonial m = new Matrimonial(mBean.getId());
        /*m.setMarriageNumber(mBean.getMarriageNumber());
        m.setDateOfMarriage(mBean.getDateOfMarriage());
        m.setHusbandMemberID(cBean.getId());
        m.setHusbandAddress(mBean.getHusbandAddress());
        m.setWifeMemberID(csBean.getId());
        m.setWifeAddress(mBean.getWifeAddress());
        m.setHusbandSponsorID(sBean.getId());
        m.setWifeSponsorID(ssBean.getId());
        m.setOfficialDesignation(mBean.getOfficialDesignation());
        m.setConditionOfHus(mBean.getConditionOfHus());
        m.setConditionOfWife(mBean.getConditionOfWife());
        m.setConsentHus(mBean.getConsentHus());
        m.setConsentWife(mBean.getConsentWife());
        m.setMarriageBy(mBean.getMarriageBy());
        Parish p = this.parishFacade.find(mBean.getParishid());
        Minister min = this.ministerFacade.find(mBean.getMinisterid());
        User u = this.userFacade.find(2);
        m.setParishid(p);
        m.setMinisterid(min);
        m.setUserid(u);
        this.matrimonialFacade.edit(m);
        return "matrimonial";*/
    }
    
}
