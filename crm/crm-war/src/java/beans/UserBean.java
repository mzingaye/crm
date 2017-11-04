/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Baptism;
import entities.Catholic;
import entities.Confirmation;
import entities.Death;
import entities.Matrimonial;
import entities.User;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author Lyne
 */
@Stateless
@LocalBean
@SessionScoped
@Named (value="uBean")
public class UserBean implements Serializable{
    private static final long serialVersionUID = 1L;
    private Integer id;
    private String username;
    private String password;
    private int usergroup;
    private String fname;
    private String lname;
    private Date dob;
    private String natID;
    private String designation;
    private Integer deleteFlag;
    private Date createdAt;
    private List<Death> deathList;
    private List<Matrimonial> matrimonialList;
    private List<Catholic> catholicList;
    private List<Baptism> baptismList;
    private List<Confirmation> confirmationList;
    private byte[] img;
    private User u;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Death> getDeathList() {
        return deathList;
    }

    public void setDeathList(List<Death> deathList) {
        this.deathList = deathList;
    }

    public List<Matrimonial> getMatrimonialList() {
        return matrimonialList;
    }

    public void setMatrimonialList(List<Matrimonial> matrimonialList) {
        this.matrimonialList = matrimonialList;
    }

    public List<Catholic> getCatholicList() {
        return catholicList;
    }

    public void setCatholicList(List<Catholic> catholicList) {
        this.catholicList = catholicList;
    }

    public List<Baptism> getBaptismList() {
        return baptismList;
    }

    public void setBaptismList(List<Baptism> baptismList) {
        this.baptismList = baptismList;
    }

    public List<Confirmation> getConfirmationList() {
        return confirmationList;
    }

    public void setConfirmationList(List<Confirmation> confirmationList) {
        this.confirmationList = confirmationList;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getNatID() {
        return natID;
    }

    public void setNatID(String natID) {
        this.natID = natID;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

    public User getU() {
        return u;
    }

    public void setU(User u) {
        this.u = u;
    }

    public UserBean() {
    }
}
