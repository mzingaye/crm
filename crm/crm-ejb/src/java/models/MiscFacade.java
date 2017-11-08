/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Catholic;
import entities.Misc;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class MiscFacade extends AbstractFacade<Misc> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MiscFacade() {
        super(Misc.class);
    }
    public Misc findMember(Catholic memberid) {
        return getEntityManager().createNamedQuery("Misc.findByMemberId",Misc.class).setParameter("memberid",memberid).getSingleResult();
    }
}
