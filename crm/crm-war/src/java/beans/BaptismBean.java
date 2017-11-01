/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Catholic;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
import java.io.Serializable;
import java.util.Date;
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
    private int baptismNumber;
    private String physicalAddress;
    private Catholic memberid;
    private Parish parishid;
    private Minister ministerid;
    private int deleteFlag;
    private Sponsor sponsorid;

    public BaptismBean() {
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

    public int getBaptismNumber() {
        return baptismNumber;
    }

    public void setBaptismNumber(int baptismNumber) {
        this.baptismNumber = baptismNumber;
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
