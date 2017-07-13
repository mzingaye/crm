/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import entities.User;
import java.util.List;
import javax.ejb.EJB;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class UsersController {
    @EJB
    private UserFacade userFacade;

    private User u = new User();
    
    public UsersController() {
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
    
}
