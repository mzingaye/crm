/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.UserBean;
import entities.User;
import static entities.User_.usergroup;
import java.io.IOException;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import models.UserFacade;
import org.apache.myfaces.custom.fileupload.UploadedFile;

/**
 *
 * @author Lyne
 */
@ManagedBean(name="user")
@SessionScoped
public class UsersController  implements Serializable {
    @EJB
    private UserFacade userFacade;
    
    @Inject
    private UserBean uBean;

    private User u;
    
    private UploadedFile image = null;

    public UploadedFile getImage() {
        return image;
    }

    public void setImage(UploadedFile image) {
        this.image = image;
    }
    
    public UsersController() {
        this.u = new User();
    }

    public UsersController(User u) {
        this.u = u;
    }

    public User getU() {
        return u;
    }

    public void setU(User u) {
        this.u = u;
    }
    
    public List<User> getAll(){
        return this.userFacade.findAll();
    }
    
    public User get(int userID){
        return  this.userFacade.find(userID);
    }
    
    public String add() throws IOException{
        if(image!= null)
            uBean.setImg(image.getBytes());
        u.setImg(uBean.getImg());
        u.setCreatedAt(new Date());
        u.setDeleteFlag(0);
        u.setDesignation(uBean.getDesignation());
        u.setDob(uBean.getDob());
        u.setFname(uBean.getFname());
        u.setLname(uBean.getLname());
        u.setNatID(uBean.getNatID());
        u.setPassword(uBean.getPassword());
        u.setUsergroup(uBean.getUsergroup());
        u.setUsername(uBean.getUsername());
        this.userFacade.create(u);
        uBean.setId(u.getId());
        this.u = new User();
        return "profile";
    }
    
}
