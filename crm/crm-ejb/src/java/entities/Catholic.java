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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "member")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Catholic.findAll", query = "SELECT c FROM Catholic c"),
    @NamedQuery(name = "Catholic.findById", query = "SELECT c FROM Catholic c WHERE c.id = :id"),
    @NamedQuery(name = "Catholic.findByFname", query = "SELECT c FROM Catholic c WHERE c.fname like :fname"),
    @NamedQuery(name = "Catholic.findByMname", query = "SELECT c FROM Catholic c WHERE c.mname = :mname"),
    @NamedQuery(name = "Catholic.findByLname", query = "SELECT c FROM Catholic c WHERE c.lname like :lname"),
    @NamedQuery(name = "Catholic.findBySex", query = "SELECT c FROM Catholic c WHERE c.sex like :sex"),
    @NamedQuery(name = "Catholic.findByDob", query = "SELECT c FROM Catholic c WHERE c.dob like :dob"),
    @NamedQuery(name = "Catholic.findByContact", query = "SELECT c FROM Catholic c WHERE c.contact like :contact"),
    @NamedQuery(name = "Catholic.findByFfname", query = "SELECT c FROM Catholic c WHERE c.ffname = :ffname"),
    @NamedQuery(name = "Catholic.findByFmname", query = "SELECT c FROM Catholic c WHERE c.fmname = :fmname"),
    @NamedQuery(name = "Catholic.findByFlname", query = "SELECT c FROM Catholic c WHERE c.flname = :flname"),
    @NamedQuery(name = "Catholic.findByMfname", query = "SELECT c FROM Catholic c WHERE c.mfname = :mfname"),
    @NamedQuery(name = "Catholic.findByMmname", query = "SELECT c FROM Catholic c WHERE c.mmname = :mmname"),
    @NamedQuery(name = "Catholic.findByMlname", query = "SELECT c FROM Catholic c WHERE c.mlname = :mlname"),
    @NamedQuery(name = "Catholic.findByDeleteFlag", query = "SELECT c FROM Catholic c WHERE c.deleteFlag = :deleteFlag"),
    @NamedQuery(name = "Catholic.findByCreatedAt", query = "SELECT c FROM Catholic c WHERE c.createdAt = :createdAt")})
public class Catholic implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull(message = "First Name cannot be empty!") 
    @Size(min = 1, max = 50)
    @Column(name = "fname")
    private String fname;
    @Size(max = 50)
    @Column(name = "mname")
    private String mname;
    @Basic(optional = false)
    @NotNull(message = "Last Name cannot be empty!") 
    @Size(min = 1, max = 50)
    @Column(name = "lname")
    private String lname;
    @Basic(optional = false)
    @NotNull(message = "Sex can't be empty") 
    @Size(min = 1, max = 10)
    @Column(name = "sex")
    private String sex;
    @Basic(optional = false)
    @NotNull(message = "Date can't be empty") 
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Basic(optional = false)
    @NotNull(message = "Age can't be empty") 
    @Size(min = 1, max = 255)
    @Column(name = "contact")
    private String contact;
    @Size(max = 50)
    @Column(name = "ffname")
    private String ffname;
    @Size(max = 50)
    @Column(name = "fmname")
    private String fmname;
    @Size(max = 50)
    @Column(name = "flname")
    private String flname;
    @Size(max = 50)
    @Column(name = "mfname")
    private String mfname;
    @Size(max = 50)
    @Column(name = "mmname")
    private String mmname;
    @Size(max = 50)
    @Column(name = "mlname")
    private String mlname;
    @Column(name = "deleteFlag")
    private Integer deleteFlag;
    @Column(name = "createdAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @JoinColumn(name = "Userid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private User userid;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "memberid")
    private List<Baptism> baptismList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "memberid")
    private List<Misc> miscList;

    public Catholic() {
    }

    public Catholic(Integer id) {
        this.id = id;
    }

    public Catholic(Integer id, String fname, String lname, String sex, Date dob, String contact) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.sex = sex;
        this.dob = dob;
        this.contact = contact;
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

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getFfname() {
        return ffname;
    }

    public void setFfname(String ffname) {
        this.ffname = ffname;
    }

    public String getFmname() {
        return fmname;
    }

    public void setFmname(String fmname) {
        this.fmname = fmname;
    }

    public String getFlname() {
        return flname;
    }

    public void setFlname(String flname) {
        this.flname = flname;
    }

    public String getMfname() {
        return mfname;
    }

    public void setMfname(String mfname) {
        this.mfname = mfname;
    }

    public String getMmname() {
        return mmname;
    }

    public void setMmname(String mmname) {
        this.mmname = mmname;
    }

    public String getMlname() {
        return mlname;
    }

    public void setMlname(String mlname) {
        this.mlname = mlname;
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

    @XmlTransient
    public List<Baptism> getBaptismList() {
        return baptismList;
    }

    public void setBaptismList(List<Baptism> baptismList) {
        this.baptismList = baptismList;
    }

    @XmlTransient
    public List<Misc> getMiscList() {
        return miscList;
    }

    public void setMiscList(List<Misc> miscList) {
        this.miscList = miscList;
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
        if (!(object instanceof Catholic)) {
            return false;
        }
        Catholic other = (Catholic) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Catholic[ id=" + id + " ]";
    }
    
}
