/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Minister;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Lyne
 */
@Stateless
public class MinisterFacade extends AbstractFacade<Minister> {
    @PersistenceContext(unitName = "crm-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MinisterFacade() {
        super(Minister.class);
    }
    
}
