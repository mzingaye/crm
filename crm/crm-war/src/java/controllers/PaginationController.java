/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.Serializable;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Hp
 */
@ManagedBean(name = "page")
@RequestScoped
public class PaginationController implements Serializable{

    public PaginationController() {
    }
    
    private static int rows = 5;

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        PaginationController.rows = rows;
    }
    
}
