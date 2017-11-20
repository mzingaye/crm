/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Baptism;
import entities.Catholic;
import entities.Confirmation;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class ConfirmationFacade extends AbstractFacade<Confirmation> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ConfirmationFacade() {
        super(Confirmation.class);
    }
    
    public Confirmation findMember(Catholic memberid) throws Exception {
        return getEntityManager().createNamedQuery("Confirmation.findByMemberId",Confirmation.class).setParameter("memberid",memberid).getSingleResult();
    }

    public Confirmation findBaptism(Baptism baptismid) {
        try{
            return getEntityManager().createNamedQuery("Confirmation.findBaptism",Confirmation.class).setParameter("baptismid",baptismid).getSingleResult(); 
        }
        catch(NoResultException n){
            return null;
        }
    }
}
