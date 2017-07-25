/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Baptism;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class BaptismFacade extends AbstractFacade<Baptism> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public BaptismFacade() {
        super(Baptism.class);
    }
    
    public List<Baptism> findByCname(String cname) {
        return getEntityManager().createNamedQuery("Baptism.findByCname",Baptism.class).setParameter("cname","%"+cname+"%").getResultList();
    }
    
}
