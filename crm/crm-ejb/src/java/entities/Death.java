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
@Table(name = "death")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Death.findAll", query = "SELECT d FROM Death d"),
    @NamedQuery(name = "Death.findById", query = "SELECT d FROM Death d WHERE d.id = :id"),
    @NamedQuery(name = "Death.findByDateOfDeath", query = "SELECT d FROM Death d WHERE d.dateOfDeath = :dateOfDeath"),
    @NamedQuery(name = "Death.findByDateOfBurial", query = "SELECT d FROM Death d WHERE d.dateOfBurial = :dateOfBurial"),
    @NamedQuery(name = "Death.findByPlaceOfDeath", query = "SELECT d FROM Death d WHERE d.placeOfDeath = :placeOfDeath"),
    @NamedQuery(name = "Death.findByPlaceOfBurial", query = "SELECT d FROM Death d WHERE d.placeOfBurial = :placeOfBurial"),
    @NamedQuery(name = "Death.findBySacramentAdministered", query = "SELECT d FROM Death d WHERE d.sacramentAdministered = :sacramentAdministered"),
    @NamedQuery(name = "Death.findByDeleteFlag", query = "SELECT d FROM Death d WHERE d.deleteFlag = :deleteFlag"),
    @NamedQuery(name = "Death.findByCreatedAt", query = "SELECT d FROM Death d WHERE d.createdAt = :createdAt")})
public class Death implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfDeath")
    @Temporal(TemporalType.DATE)
    private Date dateOfDeath;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfBurial")
    @Temporal(TemporalType.DATE)
    private Date dateOfBurial;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "placeOfDeath")
    private String placeOfDeath;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "placeOfBurial")
    private String placeOfBurial;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "sacramentAdministered")
    private String sacramentAdministered;
    @Column(name = "deleteFlag")
    private Integer deleteFlag;
    @Column(name = "createdAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @JoinColumn(name = "Matrimonialid", referencedColumnName = "id")
    @ManyToOne
    private Matrimonial matrimonialid;
    @JoinColumn(name = "Userid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userid;
    @JoinColumn(name = "Baptismid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Baptism baptismid;
    @JoinColumn(name = "Parishid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Parish parishid;
    @JoinColumn(name = "ministerid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Minister ministerid;

    public Death() {
    }

    public Death(Integer id) {
        this.id = id;
    }

    public Death(Integer id, Date dateOfDeath, Date dateOfBurial, String placeOfDeath, String placeOfBurial, String sacramentAdministered) {
        this.id = id;
        this.dateOfDeath = dateOfDeath;
        this.dateOfBurial = dateOfBurial;
        this.placeOfDeath = placeOfDeath;
        this.placeOfBurial = placeOfBurial;
        this.sacramentAdministered = sacramentAdministered;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDateOfDeath() {
        return dateOfDeath;
    }

    public void setDateOfDeath(Date dateOfDeath) {
        this.dateOfDeath = dateOfDeath;
    }

    public Date getDateOfBurial() {
        return dateOfBurial;
    }

    public void setDateOfBurial(Date dateOfBurial) {
        this.dateOfBurial = dateOfBurial;
    }

    public String getPlaceOfDeath() {
        return placeOfDeath;
    }

    public void setPlaceOfDeath(String placeOfDeath) {
        this.placeOfDeath = placeOfDeath;
    }

    public String getPlaceOfBurial() {
        return placeOfBurial;
    }

    public void setPlaceOfBurial(String placeOfBurial) {
        this.placeOfBurial = placeOfBurial;
    }

    public String getSacramentAdministered() {
        return sacramentAdministered;
    }

    public void setSacramentAdministered(String sacramentAdministered) {
        this.sacramentAdministered = sacramentAdministered;
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

    public Matrimonial getMatrimonialid() {
        return matrimonialid;
    }

    public void setMatrimonialid(Matrimonial matrimonialid) {
        this.matrimonialid = matrimonialid;
    }

    public User getUserid() {
        return userid;
    }

    public void setUserid(User userid) {
        this.userid = userid;
    }

    public Baptism getBaptismid() {
        return baptismid;
    }

    public void setBaptismid(Baptism baptismid) {
        this.baptismid = baptismid;
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
        if (!(object instanceof Death)) {
            return false;
        }
        Death other = (Death) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Death[ id=" + id + " ]";
    }
    
}
