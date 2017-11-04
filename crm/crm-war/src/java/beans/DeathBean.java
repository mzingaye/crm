/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Matrimonial;
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
@Named(value="dBean")
public class DeathBean implements Serializable{

    private Integer id;
    private Matrimonial matrimonialid;
    private Date dod;
    private String placeOfDeath;
    private Date dateOfBurial;
    private String placeOfBurial;
    private String sacramentAdministered;
    private int memberid;
    private int parishid;
    private int ministerid;
    private int deleteFlag;

    public Matrimonial getMatrimonialid() {
        return matrimonialid;
    }

    public void setMatrimonialid(Matrimonial matrimonialid) {
        this.matrimonialid = matrimonialid;
    }

    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public DeathBean() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDod() {
        return dod;
    }

    public void setDod(Date dod) {
        this.dod = dod;
    }

    public String getPlaceOfDeath() {
        return placeOfDeath;
    }

    public void setPlaceOfDeath(String placeOfDeath) {
        this.placeOfDeath = placeOfDeath;
    }

    public Date getDateOfBurial() {
        return dateOfBurial;
    }

    public void setDateOfBurial(Date dateOfBurial) {
        this.dateOfBurial = dateOfBurial;
    }

    public String getPlaceOfBurial() {
        return placeOfBurial;
    }

    public void setPlaceOfBurial(String placeOfBurial) {
        this.placeOfBurial = placeOfBurial;
    }

    public String getSacramentAdministered() {
        return sacramentAdministered;
    }

    public void setSacramentAdministered(String sacramentAdministered) {
        this.sacramentAdministered = sacramentAdministered;
    }

    public int getMemberid() {
        return memberid;
    }

    public void setMemberid(int memberid) {
        this.memberid = memberid;
    }

    public int getParishid() {
        return parishid;
    }

    public void setParishid(int parishid) {
        this.parishid = parishid;
    }

    public int getMinisterid() {
        return ministerid;
    }

    public void setMinisterid(int ministerid) {
        this.ministerid = ministerid;
    }

}
