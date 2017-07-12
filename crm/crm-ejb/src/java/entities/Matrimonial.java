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
    @NamedQuery(name = "Matrimonial.findByConditionOfParties", query = "SELECT m FROM Matrimonial m WHERE m.conditionOfParties = :conditionOfParties"),
    @NamedQuery(name = "Matrimonial.findByConscentByWhomGiven", query = "SELECT m FROM Matrimonial m WHERE m.conscentByWhomGiven = :conscentByWhomGiven"),
    @NamedQuery(name = "Matrimonial.findByBanns", query = "SELECT m FROM Matrimonial m WHERE m.banns = :banns"),
    @NamedQuery(name = "Matrimonial.findByIntentionToMarry", query = "SELECT m FROM Matrimonial m WHERE m.intentionToMarry = :intentionToMarry"),
    @NamedQuery(name = "Matrimonial.findByMarriageLicence", query = "SELECT m FROM Matrimonial m WHERE m.marriageLicence = :marriageLicence"),
    @NamedQuery(name = "Matrimonial.findByHusbandSponsorID", query = "SELECT m FROM Matrimonial m WHERE m.husbandSponsorID = :husbandSponsorID"),
    @NamedQuery(name = "Matrimonial.findByWifeSponsorID", query = "SELECT m FROM Matrimonial m WHERE m.wifeSponsorID = :wifeSponsorID"),
    @NamedQuery(name = "Matrimonial.findByOfficialDesignation", query = "SELECT m FROM Matrimonial m WHERE m.officialDesignation = :officialDesignation")})
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
    @Size(min = 1, max = 15)
    @Column(name = "conditionOfParties")
    private String conditionOfParties;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "conscentByWhomGiven")
    private String conscentByWhomGiven;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "Banns")
    private String banns;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "IntentionToMarry")
    private String intentionToMarry;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "MarriageLicence")
    private String marriageLicence;
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

    public Matrimonial(Integer id, int marriageNumber, Date dateOfMarriage, int husbandMemberID, String husbandAddress, int wifeMemberID, String wifeAddress, String conditionOfParties, String conscentByWhomGiven, String banns, String intentionToMarry, String marriageLicence, int husbandSponsorID, int wifeSponsorID, String officialDesignation) {
        this.id = id;
        this.marriageNumber = marriageNumber;
        this.dateOfMarriage = dateOfMarriage;
        this.husbandMemberID = husbandMemberID;
        this.husbandAddress = husbandAddress;
        this.wifeMemberID = wifeMemberID;
        this.wifeAddress = wifeAddress;
        this.conditionOfParties = conditionOfParties;
        this.conscentByWhomGiven = conscentByWhomGiven;
        this.banns = banns;
        this.intentionToMarry = intentionToMarry;
        this.marriageLicence = marriageLicence;
        this.husbandSponsorID = husbandSponsorID;
        this.wifeSponsorID = wifeSponsorID;
        this.officialDesignation = officialDesignation;
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

    public String getConditionOfParties() {
        return conditionOfParties;
    }

    public void setConditionOfParties(String conditionOfParties) {
        this.conditionOfParties = conditionOfParties;
    }

    public String getConscentByWhomGiven() {
        return conscentByWhomGiven;
    }

    public void setConscentByWhomGiven(String conscentByWhomGiven) {
        this.conscentByWhomGiven = conscentByWhomGiven;
    }

    public String getBanns() {
        return banns;
    }

    public void setBanns(String banns) {
        this.banns = banns;
    }

    public String getIntentionToMarry() {
        return intentionToMarry;
    }

    public void setIntentionToMarry(String intentionToMarry) {
        this.intentionToMarry = intentionToMarry;
    }

    public String getMarriageLicence() {
        return marriageLicence;
    }

    public void setMarriageLicence(String marriageLicence) {
        this.marriageLicence = marriageLicence;
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
