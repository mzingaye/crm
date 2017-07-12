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
@Table(name = "user")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "User.findAll", query = "SELECT u FROM User u"),
    @NamedQuery(name = "User.findById", query = "SELECT u FROM User u WHERE u.id = :id"),
    @NamedQuery(name = "User.findByUsername", query = "SELECT u FROM User u WHERE u.username = :username"),
    @NamedQuery(name = "User.findByPassword", query = "SELECT u FROM User u WHERE u.password = :password"),
    @NamedQuery(name = "User.findByUsergroup", query = "SELECT u FROM User u WHERE u.usergroup = :usergroup"),
    @NamedQuery(name = "User.findByDesignation", query = "SELECT u FROM User u WHERE u.designation = :designation"),
    @NamedQuery(name = "User.findByUserid", query = "SELECT u FROM User u WHERE u.userid = :userid")})
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Column(name = "usergroup")
    private int usergroup;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "designation")
    private String designation;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Userid")
    private int userid;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private List<Death> deathList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private List<Matrimonial> matrimonialList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private List<Catholic> catholicList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private List<Baptism> baptismList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userid")
    private List<Confirmation> confirmationList;

    public User() {
    }

    public User(Integer id) {
        this.id = id;
    }

    public User(Integer id, String username, String password, int usergroup, String designation, int userid) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.usergroup = usergroup;
        this.designation = designation;
        this.userid = userid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getUsergroup() {
        return usergroup;
    }

    public void setUsergroup(int usergroup) {
        this.usergroup = usergroup;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
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
    public List<Catholic> getCatholicList() {
        return catholicList;
    }

    public void setCatholicList(List<Catholic> catholicList) {
        this.catholicList = catholicList;
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
        if (!(object instanceof User)) {
            return false;
        }
        User other = (User) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.User[ id=" + id + " ]";
    }
    
}
