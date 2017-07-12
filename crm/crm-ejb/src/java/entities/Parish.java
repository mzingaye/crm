/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Lyne
 */
@Entity
@Table(name = "parish")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Parish.findAll", query = "SELECT p FROM Parish p"),
    @NamedQuery(name = "Parish.findById", query = "SELECT p FROM Parish p WHERE p.id = :id"),
    @NamedQuery(name = "Parish.findByName", query = "SELECT p FROM Parish p WHERE p.name = :name"),
    @NamedQuery(name = "Parish.findByPhysicalAddress", query = "SELECT p FROM Parish p WHERE p.physicalAddress = :physicalAddress"),
    @NamedQuery(name = "Parish.findByContact", query = "SELECT p FROM Parish p WHERE p.contact = :contact")})
public class Parish implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "name")
    private String name;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "physicalAddress")
    private String physicalAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "contact")
    private String contact;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "parishid")
    private List<Death> deathList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "parishid")
    private List<Matrimonial> matrimonialList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "parishid")
    private List<Baptism> baptismList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "parishid")
    private List<Confirmation> confirmationList;

    public Parish() {
    }

    public Parish(Integer id) {
        this.id = id;
    }

    public Parish(Integer id, String name, String physicalAddress, String contact) {
        this.id = id;
        this.name = name;
        this.physicalAddress = physicalAddress;
        this.contact = contact;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhysicalAddress() {
        return physicalAddress;
    }

    public void setPhysicalAddress(String physicalAddress) {
        this.physicalAddress = physicalAddress;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
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
        if (!(object instanceof Parish)) {
            return false;
        }
        Parish other = (Parish) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Parish[ id=" + id + " ]";
    }
    
}
