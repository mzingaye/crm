/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Baptism;
import entities.Catholic;
import entities.Minister;
import entities.Parish;
import entities.Sponsor;
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
@Named(value="coBean")
public class ConfirmationBean implements Serializable  {

    private Integer id;
    private Date dateOfConfirmation;
    private Minister ministerid;
    private Baptism baptismid;
    private Parish parishid;
    private Sponsor sponsorid;

    public Baptism getBaptismid() {
        return baptismid;
    }

    public void setBaptismid(Baptism baptismid) {
        this.baptismid = baptismid;
    }

    public Minister getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(Minister ministerid) {
        this.ministerid = ministerid;
    }

    public Parish getParishid() {
        return parishid;
    }

    public void setParishid(Parish parishid) {
        this.parishid = parishid;
    }

    public Sponsor getSponsorid() {
        return sponsorid;
    }

    public void setSponsorid(Sponsor sponsorid) {
        this.sponsorid = sponsorid;
    }
    private int deleteFlag;

    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public ConfirmationBean() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDateOfConfirmation() {
        return dateOfConfirmation;
    }

    public void setDateOfConfirmation(Date dateOfConfirmation) {
        this.dateOfConfirmation = dateOfConfirmation;
    }

}
