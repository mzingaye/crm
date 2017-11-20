/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import entities.Baptism;
import entities.Catholic;
import java.util.Date;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
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
    public List<Baptism> findByDateOfBaptism(Date dateOfBaptism) {
        return getEntityManager().createNamedQuery("Baptism.findByDateOfBaptism",Baptism.class).setParameter("dateOfBaptism",dateOfBaptism).getResultList();
    }
    public List<Baptism> findByFirstCommunion(Date firstCommunion) {
        return getEntityManager().createNamedQuery("Baptism.findByFirstCommunion",Baptism.class).setParameter("firstCommunion","%"+firstCommunion+"%").getResultList();
    }
     public Baptism findMember(Catholic memberid) {
         try{
            return getEntityManager().createNamedQuery("Baptism.findByMemberId",Baptism.class).setParameter("memberid",memberid).getSingleResult();
        }
         catch(NoResultException e){
             return null;
         }
    }
    
}
