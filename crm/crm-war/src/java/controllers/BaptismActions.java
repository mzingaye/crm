/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import javax.ejb.EJB;
import models.BaptismFacade;
import models.CatholicFacade;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class BaptismActions {
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private BaptismFacade baptismFacade;

    
    public BaptismActions() {
    }
    
}
