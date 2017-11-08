/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.SystemMessages;
import beans.UserBean;
import entities.User;
import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import javax.validation.ConstraintViolationException;
import models.UserFacade;
import org.apache.log4j.Logger;
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
    @Inject
    private SystemMessages sys;

    private User u;
    
    private String password;
    
    private String con_password;
    
    Logger log = Logger.getLogger(UsersController.class);

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCon_password() {
        return con_password;
    }

    public void setCon_password(String con_password) {
        this.con_password = con_password;
    }
    
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
        if(this.password.equals(this.con_password)){
            try{
                if(image!= null)
                    this.u.setImg(image.getBytes());
                this.u.setPassword(con_password); 
                this.userFacade.create(this.u);
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Created User: "+u.getUsername()+" successfully");
                this.u = new User();
            }
            catch(IOException e){
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => User with Username : "+u.getUsername()+" or National Id / Passport Number : "+u.getNatID()+" already exists, constraint Violated!");
            }
        }
        else{
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Passwords do not match, cannot create new user try again!");
        }
       
        return "users";
    }
    
    public void edit(int id) throws IOException{
        try{
            u = this.userFacade.find(id);
            if(this.password.equals(this.con_password)){
                uBean.setPassword(con_password); 
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
                this.userFacade.edit(u);
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => profile updated successfully!");
            }
            else{
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Passwords do not match, cannot update profile try again!");
           }
        }
        catch(Exception e){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => User with Username : "+u.getUsername()+" or National Id / Passport Number : "+u.getNatID()+" already exists, constraint Violated!");
        }
    }
    
    public String getSecurePassword(String passwordToHash) throws UnsupportedEncodingException{
        String generatedPassword = null;
        try {
             MessageDigest md = MessageDigest.getInstance("SHA-256");
            // md.update(salt.getBytes("UTF-8"));
             byte[] bytes = md.digest(passwordToHash.getBytes("UTF-8"));
             StringBuilder sb = new StringBuilder();
             for(int i=0; i< bytes.length ;i++){
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
             }
             generatedPassword = sb.toString();
            } 
           catch (NoSuchAlgorithmException e){
            e.printStackTrace();
           }
        return generatedPassword;
    }
    
    public String view(User user){
        u = user;
        return "viewuser";
    }
    
    public String update(){
        try{
            if(this.password.equals(this.con_password)){
                u.setPassword(con_password); 
                this.userFacade.edit(u);
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => User: "+u.getId()+" updated successfully!");
                return "users";
            }
            else{
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Passwords do not match, try again!");
            }
        }
        catch(Exception e){
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => User with National Id / Passport Number : "+u.getNatID()+" already exists, constraint Violated!");
        }
        return null;
    }
    
    public String create(){
        if(this.password.equals(this.con_password)){
            this.u.setPassword(con_password); 
            try{
                this.userFacade.create(this.u);
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Created User: "+u.getUsername()+" successfully");
                return "users";
            }
            catch(Exception e){
                log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Username already taken, try again!");
            }
            finally{
               this.u = new User(); 
            }
        }
        else{
            log.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => Passwords do not match, try again!");
        }
        return null;
    }
    
    public String cancel(){
        return "users";
    } 
    public String newUser(){
        this.u = new User();
        return "newuser";
    }
    
}
