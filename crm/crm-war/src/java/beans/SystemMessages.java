/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;
import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.faces.bean.RequestScoped;
import javax.inject.Named;

/**
 *
 * @author Lyne
 */
@Stateless
@LocalBean
@RequestScoped
@Named(value="sys")
public class SystemMessages implements Serializable{
    private String msg;
    private String lvl;

    public SystemMessages() {
        this.lvl = null;
        this.msg = null;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getLvl() {
        return lvl;
    }

    public void setLvl(String lvl) {
        this.lvl = lvl;
    }
    
}
