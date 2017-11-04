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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Lyne
 */
@Entity
@Table(name = "confirmation")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Confirmation.findAll", query = "SELECT c FROM Confirmation c"),
    @NamedQuery(name = "Confirmation.findById", query = "SELECT c FROM Confirmation c WHERE c.id = :id"),
    @NamedQuery(name = "Confirmation.findByDateOfConfirmation", query = "SELECT c FROM Confirmation c WHERE c.dateOfConfirmation = :dateOfConfirmation"),
    @NamedQuery(name = "Confirmation.findByDeleteFlag", query = "SELECT c FROM Confirmation c WHERE c.deleteFlag = :deleteFlag"),
    @NamedQuery(name = "Confirmation.findByCreatedAt", query = "SELECT c FROM Confirmation c WHERE c.createdAt = :createdAt")})
public class Confirmation implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfConfirmation")
    @Temporal(TemporalType.DATE)
    private Date dateOfConfirmation;
    @Column(name = "deleteFlag")
    private Integer deleteFlag;
    @Column(name = "createdAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @JoinColumn(name = "Baptismid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Baptism baptismid;
    @JoinColumn(name = "Userid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userid;
    @JoinColumn(name = "ministerid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Minister ministerid;
    @JoinColumn(name = "Parishid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Parish parishid;
    @JoinColumn(name = "Sponsorid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Sponsor sponsorid;

    public Confirmation() {
    }

    public Confirmation(Integer id) {
        this.id = id;
    }

    public Confirmation(Integer id, Date dateOfConfirmation) {
        this.id = id;
        this.dateOfConfirmation = dateOfConfirmation;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDateOfConfirmation() {
        return dateOfConfirmation;
    }

    public void setDateOfConfirmation(Date dateOfConfirmation) {
        this.dateOfConfirmation = dateOfConfirmation;
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

    public Minister getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(Minister ministerid) {
        this.ministerid = ministerid;
    }

    public Parish getParishid() {
        return parishid;
    }

    public void setParishid(Parish parishid) {
        this.parishid = parishid;
    }

    public Sponsor getSponsorid() {
        return sponsorid;
    }

    public void setSponsorid(Sponsor sponsorid) {
        this.sponsorid = sponsorid;
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
        if (!(object instanceof Confirmation)) {
            return false;
        }
        Confirmation other = (Confirmation) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Confirmation[ id=" + id + " ]";
    }
    
}
