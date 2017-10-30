/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

/**
 *
 * @author Lyne
 */
@ManagedBean(name = "userlogs")
@RequestScoped
public class UserLogsController implements Serializable {

    public UserLogsController() {
        
    }

    public List<String>  findAll(){
        List<String> log = new ArrayList<>();
        try (BufferedReader br = new BufferedReader(new FileReader(System.getProperty("com.sun.aas.instanceRoot") + "/logs/crm/userlogs.log")))
        {
            String sCurrentLine;
            while ((sCurrentLine = br.readLine()) != null) {
                log.add(sCurrentLine);
            }

        } catch (IOException e) {
            e.printStackTrace();
        } 
        return log;
    } 
}
