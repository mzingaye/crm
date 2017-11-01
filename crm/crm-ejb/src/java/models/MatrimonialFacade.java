/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Catholic;
import entities.Matrimonial;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class MatrimonialFacade extends AbstractFacade<Matrimonial> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MatrimonialFacade() {
        super(Matrimonial.class);
    }
    
    public Matrimonial findByHusbandMemberID(int husbandMemberID) throws Exception {
        return getEntityManager().createNamedQuery("Matrimonial.findByHusbandMemberID",Matrimonial.class).setParameter("husbandMemberID",husbandMemberID).getSingleResult();
    }
    public Matrimonial findByWifeMemberID(int wifeMemberID) throws Exception {
        return getEntityManager().createNamedQuery("Matrimonial.findByWifeMemberID",Matrimonial.class).setParameter("wifeMemberID",wifeMemberID).getSingleResult();
    }
    
}
