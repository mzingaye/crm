/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Catholic;
import entities.Confirmation;
import entities.Death;
import entities.Matrimonial;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import entities.User;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author Lyne
 */
@Stateless
@LocalBean
@SessionScoped
@Named (value="bBean")
public class BaptismBean implements Serializable {

    private Integer id;
    private String cname;
    private Date dateOfBaptism;
    private Date firstCommunion;
    private String physicalAddress;
    private Catholic memberid;
    private Parish parishid;
    private Minister ministerid;
    private int deleteFlag;
    private Sponsor sponsorid;
    private List<Death> deathList;
    private List<Matrimonial> matrimonialList;
    private List<Matrimonial> matrimonialList1;
    private User userid;
    private List<Confirmation> confirmationList;

    public BaptismBean() {
    }

    public List<Matrimonial> getMatrimonialList1() {
        return matrimonialList1;
    }

    public void setMatrimonialList1(List<Matrimonial> matrimonialList1) {
        this.matrimonialList1 = matrimonialList1;
    }

    public List<Death> getDeathList() {
        return deathList;
    }

    public void setDeathList(List<Death> deathList) {
        this.deathList = deathList;
    }

    public List<Matrimonial> getMatrimonialList() {
        return matrimonialList;
    }

    public void setMatrimonialList(List<Matrimonial> matrimonialList) {
        this.matrimonialList = matrimonialList;
    }

    public User getUserid() {
        return userid;
    }

    public void setUserid(User userid) {
        this.userid = userid;
    }

    public List<Confirmation> getConfirmationList() {
        return confirmationList;
    }

    public void setConfirmationList(List<Confirmation> confirmationList) {
        this.confirmationList = confirmationList;
    }
    
    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Date getDateOfBaptism() {
        return dateOfBaptism;
    }

    public void setDateOfBaptism(Date dateOfBaptism) {
        this.dateOfBaptism = dateOfBaptism;
    }

    public Date getFirstCommunion() {
        return firstCommunion;
    }

    public void setFirstCommunion(Date firstCommunion) {
        this.firstCommunion = firstCommunion;
    }

    public String getPhysicalAddress() {
        return physicalAddress;
    }

    public void setPhysicalAddress(String physicalAddress) {
        this.physicalAddress = physicalAddress;
    }

    public Catholic getMemberid() {
        return memberid;
    }

    public void setMemberid(Catholic memberid) {
        this.memberid = memberid;
    }

    public Parish getParishid() {
        return parishid;
    }

    public void setParishid(Parish parishid) {
        this.parishid = parishid;
    }

    public Minister getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(Minister ministerid) {
        this.ministerid = ministerid;
    }

    public Sponsor getSponsorid() {
        return sponsorid;
    }

    public void setSponsorid(Sponsor sponsorid) {
        this.sponsorid = sponsorid;
    }

}
