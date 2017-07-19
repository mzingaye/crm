/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Lyne
 */
@Entity
@Table(name = "matrimonial")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Matrimonial.findAll", query = "SELECT m FROM Matrimonial m"),
    @NamedQuery(name = "Matrimonial.findById", query = "SELECT m FROM Matrimonial m WHERE m.id = :id"),
    @NamedQuery(name = "Matrimonial.findByMarriageNumber", query = "SELECT m FROM Matrimonial m WHERE m.marriageNumber = :marriageNumber"),
    @NamedQuery(name = "Matrimonial.findByDateOfMarriage", query = "SELECT m FROM Matrimonial m WHERE m.dateOfMarriage = :dateOfMarriage"),
    @NamedQuery(name = "Matrimonial.findByHusbandMemberID", query = "SELECT m FROM Matrimonial m WHERE m.husbandMemberID = :husbandMemberID"),
    @NamedQuery(name = "Matrimonial.findByHusbandAddress", query = "SELECT m FROM Matrimonial m WHERE m.husbandAddress = :husbandAddress"),
    @NamedQuery(name = "Matrimonial.findByWifeMemberID", query = "SELECT m FROM Matrimonial m WHERE m.wifeMemberID = :wifeMemberID"),
    @NamedQuery(name = "Matrimonial.findByWifeAddress", query = "SELECT m FROM Matrimonial m WHERE m.wifeAddress = :wifeAddress"),
    @NamedQuery(name = "Matrimonial.findByHusbandSponsorID", query = "SELECT m FROM Matrimonial m WHERE m.husbandSponsorID = :husbandSponsorID"),
    @NamedQuery(name = "Matrimonial.findByWifeSponsorID", query = "SELECT m FROM Matrimonial m WHERE m.wifeSponsorID = :wifeSponsorID"),
    @NamedQuery(name = "Matrimonial.findByOfficialDesignation", query = "SELECT m FROM Matrimonial m WHERE m.officialDesignation = :officialDesignation"),
    @NamedQuery(name = "Matrimonial.findByConditionOfHus", query = "SELECT m FROM Matrimonial m WHERE m.conditionOfHus = :conditionOfHus"),
    @NamedQuery(name = "Matrimonial.findByConditionOfWife", query = "SELECT m FROM Matrimonial m WHERE m.conditionOfWife = :conditionOfWife"),
    @NamedQuery(name = "Matrimonial.findByConsentHus", query = "SELECT m FROM Matrimonial m WHERE m.consentHus = :consentHus"),
    @NamedQuery(name = "Matrimonial.findByConsentWife", query = "SELECT m FROM Matrimonial m WHERE m.consentWife = :consentWife"),
    @NamedQuery(name = "Matrimonial.findByMarriageBy", query = "SELECT m FROM Matrimonial m WHERE m.marriageBy = :marriageBy")})
public class Matrimonial implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "marriageNumber")
    private int marriageNumber;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfMarriage")
    @Temporal(TemporalType.DATE)
    private Date dateOfMarriage;
    @Basic(optional = false)
    @NotNull
    @Column(name = "husbandMemberID")
    private int husbandMemberID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "husbandAddress")
    private String husbandAddress;
    @Basic(optional = false)
    @NotNull
    @Column(name = "wifeMemberID")
    private int wifeMemberID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "wifeAddress")
    private String wifeAddress;
    @Basic(optional = false)
    @NotNull
    @Column(name = "husbandSponsorID")
    private int husbandSponsorID;
    @Basic(optional = false)
    @NotNull
    @Column(name = "wifeSponsorID")
    private int wifeSponsorID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "officialDesignation")
    private String officialDesignation;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "conditionOfHus")
    private String conditionOfHus;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "conditionOfWife")
    private String conditionOfWife;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "consentHus")
    private String consentHus;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "consentWife")
    private String consentWife;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "marriageBy")
    private String marriageBy;
    @JoinColumn(name = "Userid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userid;
    @JoinColumn(name = "Parishid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Parish parishid;
    @JoinColumn(name = "ministerid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Minister ministerid;

    public Matrimonial() {
    }

    public Matrimonial(Integer id) {
        this.id = id;
    }

    public Matrimonial(Integer id, int marriageNumber, Date dateOfMarriage, int husbandMemberID, String husbandAddress, int wifeMemberID, String wifeAddress, int husbandSponsorID, int wifeSponsorID, String officialDesignation, String conditionOfHus, String conditionOfWife, String consentHus, String consentWife, String marriageBy) {
        this.id = id;
        this.marriageNumber = marriageNumber;
        this.dateOfMarriage = dateOfMarriage;
        this.husbandMemberID = husbandMemberID;
        this.husbandAddress = husbandAddress;
        this.wifeMemberID = wifeMemberID;
        this.wifeAddress = wifeAddress;
        this.husbandSponsorID = husbandSponsorID;
        this.wifeSponsorID = wifeSponsorID;
        this.officialDesignation = officialDesignation;
        this.conditionOfHus = conditionOfHus;
        this.conditionOfWife = conditionOfWife;
        this.consentHus = consentHus;
        this.consentWife = consentWife;
        this.marriageBy = marriageBy;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Matrimonial)) {
            return false;
        }
        Matrimonial other = (Matrimonial) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Matrimonial[ id=" + id + " ]";
    }
    
}
