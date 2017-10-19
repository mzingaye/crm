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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Lyne
 */
@Entity
@Table(name = "misc")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Misc.findAll", query = "SELECT m FROM Misc m"),
    @NamedQuery(name = "Misc.findById", query = "SELECT m FROM Misc m WHERE m.id = :id"),
    @NamedQuery(name = "Misc.findByTribe", query = "SELECT m FROM Misc m WHERE m.tribe = :tribe"),
    @NamedQuery(name = "Misc.findByScc", query = "SELECT m FROM Misc m WHERE m.scc = :scc"),
    @NamedQuery(name = "Misc.findByArea", query = "SELECT m FROM Misc m WHERE m.area = :area"),
    @NamedQuery(name = "Misc.findByEmpStatus", query = "SELECT m FROM Misc m WHERE m.empStatus = :empStatus"),
    @NamedQuery(name = "Misc.findByIncome", query = "SELECT m FROM Misc m WHERE m.income = :income")})
public class Misc implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 20)
    @Column(name = "tribe")
    private String tribe;
    @Size(max = 50)
    @Column(name = "scc")
    private String scc;
    @Size(max = 20)
    @Column(name = "area")
    private String area;
    @Size(max = 50)
    @Column(name = "empStatus")
    private String empStatus;
    @Size(max = 20)
    @Column(name = "income")
    private String income;
    @JoinColumn(name = "memberid", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Catholic memberid;

    public Misc() {
    }

    public Misc(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTribe() {
        return tribe;
    }

    public void setTribe(String tribe) {
        this.tribe = tribe;
    }

    public String getScc() {
        return scc;
    }

    public void setScc(String scc) {
        this.scc = scc;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getEmpStatus() {
        return empStatus;
    }

    public void setEmpStatus(String empStatus) {
        this.empStatus = empStatus;
    }

    public String getIncome() {
        return income;
    }

    public void setIncome(String income) {
        this.income = income;
    }

    public Catholic getMemberid() {
        return memberid;
    }

    public void setMemberid(Catholic memberid) {
        this.memberid = memberid;
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
        if (!(object instanceof Misc)) {
            return false;
        }
        Misc other = (Misc) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Misc[ id=" + id + " ]";
    }
    
}
