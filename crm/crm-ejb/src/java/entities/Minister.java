/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

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
    @NamedQuery(name = "Minister.findByRank", query = "SELECT m FROM Minister m WHERE m.rank = :rank"),
    @NamedQuery(name = "Minister.findByContact", query = "SELECT m FROM Minister m WHERE m.contact = :contact"),
    @NamedQuery(name = "Minister.findByNatID", query = "SELECT m FROM Minister m WHERE m.natID = :natID"),
    @NamedQuery(name = "Minister.findByPriestorder", query = "SELECT m FROM Minister m WHERE m.priestorder = :priestorder")})
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
    @Column(name = "rank")
    private String rank;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "contact")
    private String contact;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "natID")
    private String natID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "priestorder")
    private String priestorder;

    public Minister() {
    }

    public Minister(Integer id) {
        this.id = id;
    }

    public Minister(Integer id, String fname, String lname, String rank, String contact, String natID, String priestorder) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.rank = rank;
        this.contact = contact;
        this.natID = natID;
        this.priestorder = priestorder;
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

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getNatID() {
        return natID;
    }

    public void setNatID(String natID) {
        this.natID = natID;
    }

    public String getPriestorder() {
        return priestorder;
    }

    public void setPriestorder(String priestorder) {
        this.priestorder = priestorder;
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
