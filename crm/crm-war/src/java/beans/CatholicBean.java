/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Baptism;
import entities.Catholic;
import entities.Misc;
import entities.User;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;
import javax.faces.bean.RequestScoped;
import javax.inject.Named;

/**
 *
 * @author Lyne
 */
@Stateless
@LocalBean
@RequestScoped
@Named(value="cBean")
public class CatholicBean  implements Serializable{

    private Integer id;
    private String fname;
    private String mname;
    private String lname;
    private String sex;
    private Date dob;
    private String contact;
    private String ffname;
    private String fmname;
    private String flname;
    private String mfname;
    private String mmname;
    private String mlname;
    private int deleteFlag;
    private User userid;
    private List<Baptism> baptismList;
    private List<Misc> miscList;
    private Catholic c;

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }

    public User getUserid() {
        return userid;
    }

    public void setUserid(User userid) {
        this.userid = userid;
    }

    public List<Baptism> getBaptismList() {
        return baptismList;
    }

    public void setBaptismList(List<Baptism> baptismList) {
        this.baptismList = baptismList;
    }

    public List<Misc> getMiscList() {
        return miscList;
    }

    public void setMiscList(List<Misc> miscList) {
        this.miscList = miscList;
    }

    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public CatholicBean() {
    }

    public CatholicBean(Integer id) {
        this.id = id;
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
    
}
