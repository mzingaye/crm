/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Catholic;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class CatholicFacade extends AbstractFacade<Catholic> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CatholicFacade() {
        super(Catholic.class);
    }
    
    public List<Catholic> findByFname(String fname) {
        return getEntityManager().createNamedQuery("Catholic.findByFname",Catholic.class).setParameter("fname","%"+fname+"%").getResultList();
    }
    public List<Catholic> findByLname(String lname) {
        return getEntityManager().createNamedQuery("Catholic.findByLname",Catholic.class).setParameter("lname","%"+lname+"%").getResultList();
    }
    public List<Catholic> findBySex(String sex) {
        return getEntityManager().createNamedQuery("Catholic.findBySex",Catholic.class).setParameter("sex","%"+sex+"%").getResultList();
    }
    public List<Catholic> findByDob(Date dob) {
        return getEntityManager().createNamedQuery("Catholic.findByDob",Catholic.class).setParameter("dob","%"+dob+"%").getResultList();
    }
    public List<Catholic> findByContact(String contact) {
        return getEntityManager().createNamedQuery("Catholic.findByContact",Catholic.class).setParameter("contact","%"+contact+"%").getResultList();
    }
    
}
