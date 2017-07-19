/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

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
@Named(value="mBean")
public class MatrimonialBean implements Serializable {
    private Integer id;
    private int marriageNumber;
    private Date dateOfMarriage;
    private int husbandMemberID;
    private String husbandAddress;
    private int wifeMemberID;
    private String wifeAddress;
    private int husbandSponsorID;
    private int wifeSponsorID;
    private String officialDesignation;
    private String conditionOfHus;
    private String conditionOfWife;
    private String consentHus;
    private String consentWife;
    private String marriageBy;
    private int parishid;
    private int ministerid;

    public MatrimonialBean() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getMarriageNumber() {
        return marriageNumber;
    }

    public void setMarriageNumber(int marriageNumber) {
        this.marriageNumber = marriageNumber;
    }

    public Date getDateOfMarriage() {
        return dateOfMarriage;
    }

    public void setDateOfMarriage(Date dateOfMarriage) {
        this.dateOfMarriage = dateOfMarriage;
    }

    public int getHusbandMemberID() {
        return husbandMemberID;
    }

    public void setHusbandMemberID(int husbandMemberID) {
        this.husbandMemberID = husbandMemberID;
    }

    public String getHusbandAddress() {
        return husbandAddress;
    }

    public void setHusbandAddress(String husbandAddress) {
        this.husbandAddress = husbandAddress;
    }

    public int getWifeMemberID() {
        return wifeMemberID;
    }

    public void setWifeMemberID(int wifeMemberID) {
        this.wifeMemberID = wifeMemberID;
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

    public int getParishid() {
        return parishid;
    }

    public void setParishid(int parishid) {
        this.parishid = parishid;
    }

    public int getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(int ministerid) {
        this.ministerid = ministerid;
    }

}
