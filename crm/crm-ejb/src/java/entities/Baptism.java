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
@Table(name = "baptism")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Baptism.findAll", query = "SELECT b FROM Baptism b"),
    @NamedQuery(name = "Baptism.findById", query = "SELECT b FROM Baptism b WHERE b.id = :id"),
    @NamedQuery(name = "Baptism.findByCname", query = "SELECT b FROM Baptism b WHERE b.cname like :cname"),
    @NamedQuery(name = "Baptism.findByDateOfBaptism", query = "SELECT b FROM Baptism b WHERE b.dateOfBaptism like :dateOfBaptism"),
    @NamedQuery(name = "Baptism.findByFirstCommunion", query = "SELECT b FROM Baptism b WHERE b.firstCommunion like :firstCommunion"),
    @NamedQuery(name = "Baptism.findByBaptismNumber", query = "SELECT b FROM Baptism b WHERE b.baptismNumber like :baptismNumber"),
    @NamedQuery(name = "Baptism.findByPhysicalAddress", query = "SELECT b FROM Baptism b WHERE b.physicalAddress like :physicalAddress"),
    @NamedQuery(name = "Baptism.findByDeleteFlag", query = "SELECT b FROM Baptism b WHERE b.deleteFlag like :deleteFlag"),
    @NamedQuery(name = "Baptism.findByCreatedAt", query = "SELECT b FROM Baptism b WHERE b.createdAt like :createdAt")})
public class Baptism implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "cname")
    private String cname;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dateOfBaptism")
    @Temporal(TemporalType.DATE)
    private Date dateOfBaptism;
    @Column(name = "firstCommunion")
    @Temporal(TemporalType.DATE)
    private Date firstCommunion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "baptismNumber")
    private int baptismNumber;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "physicalAddress")
    private String physicalAddress;
    @Column(name = "deleteFlag")
    private Integer deleteFlag;
    @Column(name = "createdAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @JoinColumn(name = "Userid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userid;
    @JoinColumn(name = "memberid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Catholic memberid;
    @JoinColumn(name = "Parishid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Parish parishid;
    @JoinColumn(name = "ministerid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Minister ministerid;
    @JoinColumn(name = "Sponsorid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Sponsor sponsorid;

    public Baptism() {
    }

    public Baptism(Integer id) {
        this.id = id;
    }

    public Baptism(Integer id, String cname, Date dateOfBaptism, int baptismNumber, String physicalAddress) {
        this.id = id;
        this.cname = cname;
        this.dateOfBaptism = dateOfBaptism;
        this.baptismNumber = baptismNumber;
        this.physicalAddress = physicalAddress;
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

    public User getUserid() {
        return userid;
    }

    public void setUserid(User userid) {
        this.userid = userid;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Baptism)) {
            return false;
        }
        Baptism other = (Baptism) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Baptism[ id=" + id + " ]";
    }
    
}
