/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Lyne
 */
@Entity
@Table(name = "minister")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Minister.findAll", query = "SELECT m FROM Minister m"),
    @NamedQuery(name = "Minister.findById", query = "SELECT m FROM Minister m WHERE m.id = :id"),
    @NamedQuery(name = "Minister.findByFname", query = "SELECT m FROM Minister m WHERE m.fname = :fname"),
    @NamedQuery(name = "Minister.findByLname", query = "SELECT m FROM Minister m WHERE m.lname = :lname"),
    @NamedQuery(name = "Minister.findByMorder", query = "SELECT m FROM Minister m WHERE m.morder = :morder"),
    @NamedQuery(name = "Minister.findByRank", query = "SELECT m FROM Minister m WHERE m.rank = :rank"),
    @NamedQuery(name = "Minister.findByDeleteFlag", query = "SELECT m FROM Minister m WHERE m.deleteFlag = :deleteFlag"),
    @NamedQuery(name = "Minister.findByCreatedAt", query = "SELECT m FROM Minister m WHERE m.createdAt = :createdAt")})
public class Minister implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "fname")
    private String fname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "lname")
    private String lname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "morder")
    private String morder;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "rank")
    private String rank;
    @Column(name = "deleteFlag")
    private Integer deleteFlag;
    @Column(name = "createdAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ministerid")
    private List<Death> deathList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ministerid")
    private List<Matrimonial> matrimonialList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ministerid")
    private List<Baptism> baptismList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ministerid")
    private List<Confirmation> confirmationList;

    public Minister() {
    }

    public Minister(Integer id) {
        this.id = id;
    }

    public Minister(Integer id, String fname, String lname, String morder, String rank) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.morder = morder;
        this.rank = rank;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getMorder() {
        return morder;
    }

    public void setMorder(String morder) {
        this.morder = morder;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
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

    @XmlTransient
    public List<Death> getDeathList() {
        return deathList;
    }

    public void setDeathList(List<Death> deathList) {
        this.deathList = deathList;
    }

    @XmlTransient
    public List<Matrimonial> getMatrimonialList() {
        return matrimonialList;
    }

    public void setMatrimonialList(List<Matrimonial> matrimonialList) {
        this.matrimonialList = matrimonialList;
    }

    @XmlTransient
    public List<Baptism> getBaptismList() {
        return baptismList;
    }

    public void setBaptismList(List<Baptism> baptismList) {
        this.baptismList = baptismList;
    }

    @XmlTransient
    public List<Confirmation> getConfirmationList() {
        return confirmationList;
    }

    public void setConfirmationList(List<Confirmation> confirmationList) {
        this.confirmationList = confirmationList;
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
        if (!(object instanceof Minister)) {
            return false;
        }
        Minister other = (Minister) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Minister[ id=" + id + " ]";
    }
    
}
