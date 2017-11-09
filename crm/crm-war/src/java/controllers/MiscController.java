/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import beans.UserBean;
import entities.Catholic;
import entities.Misc;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.inject.Inject;
import javax.persistence.NoResultException;
import models.MiscFacade;
import models.ParishFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Hp
 */
@ManagedBean(name = "misc")
@SessionScoped
public class MiscController implements Serializable {

    @EJB
    private ParishFacade parishFacade;

    @EJB
    private MiscFacade miscFacade;
    @Inject
    private UserBean uBean; 

    private Misc m;
    private Catholic c;
    private int parishid;
    static final Logger LOG = Logger.getLogger(MiscController.class);

    public int getParishid() {
        return parishid;
    }

    public void setParishid(int parishid) {
        this.parishid = parishid;
    }

    public Misc getM() {
        return m;
    }

    public void setM(Misc m) {
        this.m = m;
    }

    public Catholic getC() {
        return c;
    }

    public void setC(Catholic c) {
        this.c = c;
    }
    public MiscController(){
        this.m = new Misc();
    }
    public List<Misc> getAll(){
        return this.miscFacade.findAll();
    }
    public int count(){
        return this.miscFacade.count();
    }
    public String newMisc(Catholic c){
        this.c = c;
        this.m = new Misc();
        this.parishid = 0;
        return "addmisc";
    }
    public String add(){
        try{
            this.miscFacade.findMember(c);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  can only have one Miscellaneous Record!");
            return "catholics";
        }
        catch(NoResultException | EJBException no){
            this.m.setMemberid(this.c);
            m.setParishid(this.parishFacade.find(parishid));
            this.miscFacade.create(this.m);
            LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  miscellaneous record ["+m.getId()+"] added successfully!");
            this.c = new Catholic();
            this.m = new Misc();
            return "misc";
        }
    }
    public String view(Misc m){
        this.m = m;
        this.c = m.getMemberid();
        this.parishid = m.getParishid().getId();
        return "viewmisc";
    }
    public String edit(){
        this.m.setMemberid(this.c);
        m.setParishid(this.parishFacade.find(parishid));
        this.miscFacade.edit(this.m);
        LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => "+c.getId()+" : "+c.getFname()+" "+c.getLname()+"  miscellaneous record ["+m.getId()+"] updated successfully!");
        this.c = new Catholic();
        this.m = new Misc();
        return "misc";
    }
}
