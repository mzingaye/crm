/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import java.util.Date;
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
@Named(value="csBean")
public class CatholicSpouseBean implements Serializable{

    private String natID;

    public String getNatID() {
        return natID;
    }

    public void setNatID(String natID) {
        this.natID = natID;
    }

    public String getFnatID() {
        return fnatID;
    }

    public void setFnatID(String fnatID) {
        this.fnatID = fnatID;
    }

    public String getMnatID() {
        return mnatID;
    }

    public void setMnatID(String mnatID) {
        this.mnatID = mnatID;
    }
    private String fnatID;
    private String mnatID;
    private Integer id;
    private String fname;
    private String mname;
    private String lname;
    private String sex;
    private Date dob;
    private int age;
    private String placeOfBirth;
    private String contact;
    private String ffname;
    private String fmname;
    private String flname;
    private String mfname;
    private String mmname;
    private String mlname;
    private int deleteFlag;

    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public CatholicSpouseBean() {
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

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
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
    
}
