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
@Table(name = "sponsor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sponsor.findAll", query = "SELECT s FROM Sponsor s"),
    @NamedQuery(name = "Sponsor.findById", query = "SELECT s FROM Sponsor s WHERE s.id = :id"),
    @NamedQuery(name = "Sponsor.findByFname", query = "SELECT s FROM Sponsor s WHERE s.fname = :fname"),
    @NamedQuery(name = "Sponsor.findByMname", query = "SELECT s FROM Sponsor s WHERE s.mname = :mname"),
    @NamedQuery(name = "Sponsor.findByLname", query = "SELECT s FROM Sponsor s WHERE s.lname = :lname"),
    @NamedQuery(name = "Sponsor.findBySex", query = "SELECT s FROM Sponsor s WHERE s.sex = :sex"),
    @NamedQuery(name = "Sponsor.findByDob", query = "SELECT s FROM Sponsor s WHERE s.dob = :dob"),
    @NamedQuery(name = "Sponsor.findByAge", query = "SELECT s FROM Sponsor s WHERE s.age = :age"),
    @NamedQuery(name = "Sponsor.findByNatID", query = "SELECT s FROM Sponsor s WHERE s.natID = :natID"),
    @NamedQuery(name = "Sponsor.findByContact", query = "SELECT s FROM Sponsor s WHERE s.contact = :contact")})
public class Sponsor implements Serializable {
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
    @Size(max = 50)
    @Column(name = "mname")
    private String mname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "lname")
    private String lname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "sex")
    private String sex;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dob")
    @Temporal(TemporalType.DATE)
    private Date dob;
    @Basic(optional = false)
    @NotNull
    @Column(name = "age")
    private int age;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "natID")
    private String natID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "contact")
    private String contact;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sponsorid")
    private List<Baptism> baptismList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sponsorid")
    private List<Confirmation> confirmationList;

    public Sponsor() {
    }

    public Sponsor(Integer id) {
        this.id = id;
    }

    public Sponsor(Integer id, String fname, String lname, String sex, Date dob, int age, String natID, String contact) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.sex = sex;
        this.dob = dob;
        this.age = age;
        this.natID = natID;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getNatID() {
        return natID;
    }

    public void setNatID(String natID) {
        this.natID = natID;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
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
        if (!(object instanceof Sponsor)) {
            return false;
        }
        Sponsor other = (Sponsor) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Sponsor[ id=" + id + " ]";
    }
    
}
