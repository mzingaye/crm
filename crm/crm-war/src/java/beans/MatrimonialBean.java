/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Baptism;
import entities.Death;
import entities.Minister;
import entities.Parish;
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
@Named(value="mBean")
public class MatrimonialBean implements Serializable {
    private Integer id;
    private Date dateOfMarriage;
    private String spouse;
    private int isSpouseCatholic;
    private String husbandAddress;
    private String wifeAddress;
    private String conditionOfHus;
    private String conditionOfWife;
    private String consentHus;
    private String consentWife;
    private String marriageBy;
    private int husbandSponsorID;
    private int wifeSponsorID;
    private String officialDesignation;
    private Integer deleteFlag;
    private Date createdAt;
    private List<Death> deathList;
    private Baptism baptismid;
    private User userid;
    private Parish parishid;
    private Minister ministerid;

    public String getSpouse() {
        return spouse;
    }

    public void setSpouse(String spouse) {
        this.spouse = spouse;
    }

    public int getIsSpouseCatholic() {
        return isSpouseCatholic;
    }

    public void setIsSpouseCatholic(int isSpouseCatholic) {
        this.isSpouseCatholic = isSpouseCatholic;
    }

    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public List<Death> getDeathList() {
        return deathList;
    }

    public void setDeathList(List<Death> deathList) {
        this.deathList = deathList;
    }

    public Baptism getBaptismid() {
        return baptismid;
    }

    public void setBaptismid(Baptism baptismid) {
        this.baptismid = baptismid;
    }

    public User getUserid() {
        return userid;
    }

    public void setUserid(User userid) {
        this.userid = userid;
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

    public MatrimonialBean() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
  
    public Date getDateOfMarriage() {
        return dateOfMarriage;
    }

    public void setDateOfMarriage(Date dateOfMarriage) {
        this.dateOfMarriage = dateOfMarriage;
    }

    public String getHusbandAddress() {
        return husbandAddress;
    }

    public void setHusbandAddress(String husbandAddress) {
        this.husbandAddress = husbandAddress;
    }

    public String getWifeAddress() {
        return wifeAddress;
    }

    public void setWifeAddress(String wifeAddress) {
        this.wifeAddress = wifeAddress;
    }

    public int getHusbandSponsorID() {
        return husbandSponsorID;
    }

    public void setHusbandSponsorID(int husbandSponsorID) {
        this.husbandSponsorID = husbandSponsorID;
    }

    public int getWifeSponsorID() {
        return wifeSponsorID;
    }

    public void setWifeSponsorID(int wifeSponsorID) {
        this.wifeSponsorID = wifeSponsorID;
    }

    public String getOfficialDesignation() {
        return officialDesignation;
    }

    public void setOfficialDesignation(String officialDesignation) {
        this.officialDesignation = officialDesignation;
    }

    public String getConditionOfHus() {
        return conditionOfHus;
    }

    public void setConditionOfHus(String conditionOfHus) {
        this.conditionOfHus = conditionOfHus;
    }

    public String getConditionOfWife() {
        return conditionOfWife;
    }

    public void setConditionOfWife(String conditionOfWife) {
        this.conditionOfWife = conditionOfWife;
    }

    public String getConsentHus() {
        return consentHus;
    }

    public void setConsentHus(String consentHus) {
        this.consentHus = consentHus;
    }

    public String getConsentWife() {
        return consentWife;
    }

    public void setConsentWife(String consentWife) {
        this.consentWife = consentWife;
    }

    public String getMarriageBy() {
        return marriageBy;
    }

    public void setMarriageBy(String marriageBy) {
        this.marriageBy = marriageBy;
    }
}
