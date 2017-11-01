/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.BaptismBean;
import beans.ConfirmationBean;
import beans.MatrimonialBean;
import beans.ReportsBean;
import entities.Baptism;
import entities.Confirmation;
import entities.Matrimonial;
import java.io.IOException;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.BaptismFacade;
import models.CatholicFacade;
import models.ConfirmationFacade;
import models.DeathFacade;
import models.MatrimonialFacade;
import models.SponsorFacade;

/**
 *
 * @author Lyne
 */
public class ReportsServlet extends HttpServlet {
    
    @Inject
    private BaptismBean b;
    @Inject
    private ConfirmationBean con;
    @Inject
    private ReportsBean reportsBean;
    @Inject
    private MatrimonialBean mBean;
    @EJB
    private SponsorFacade sponsorFacade;
    @EJB
    private MatrimonialFacade matrimonialFacade;
    @EJB
    private DeathFacade deathFacade;
    @EJB
    private ConfirmationFacade confirmationFacade;
    @EJB
    private CatholicFacade catholicFacade;
    @EJB
    private BaptismFacade baptismFacade;
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String r_id = request.getParameter("id");
        String r_view = request.getParameter("view");
        int id = Integer.parseInt(r_id);
        switch(r_view){
            case "catholic":
                
                
                break;
            case "sponsor":
                
                break;
            case "baptism":
                Baptism c = baptismFacade.find(id);
                try{
                    Confirmation co = confirmationFacade.findMember(c.getMemberid());
                    con.setBaptizedBy(co.getBaptizedBy());
                    con.setDateOfConfirmation(co.getDateOfConfirmation());
                    con.setMemberid(co.getMemberid());
                    con.setMinisterid(co.getMinisterid());
                    con.setParishid(co.getParishid());
                    con.setSponsorid(co.getSponsorid());
                }
                catch(Exception no){
                    con.setDateOfConfirmation(null);
                    con.setParishid(null);
                }
                Matrimonial m;
                try{
                    if(c.getMemberid().getSex().equals("Male") || c.getMemberid().getSex().equals("male")){
                        m = matrimonialFacade.findByWifeMemberID(c.getMemberid().getId());
                        mBean.setMarriedTo(catholicFacade.find(m.getHusbandMemberID()).getFname()+" "+catholicFacade.find(m.getHusbandMemberID()).getLname());
                    }
                    else{
                        m = matrimonialFacade.findByHusbandMemberID(c.getMemberid().getId());
                        mBean.setMarriedTo(catholicFacade.find(m.getWifeMemberID()).getFname()+" "+catholicFacade.find(m.getWifeMemberID()).getLname());
                    }
                    mBean.setDateOfMarriage(m.getDateOfMarriage());
                    mBean.setMarriageNumber(m.getMarriageNumber());
                    mBean.setParish(m.getParishid());
                }
                catch(Exception no){
                    mBean.setDateOfMarriage(null);
                    mBean.setMarriageNumber(0);
                    mBean.setMarriedTo(null);
                    mBean.setParishid(0);
                }
                b.setBaptismNumber(c.getBaptismNumber());
                b.setCname(c.getCname());
                b.setDateOfBaptism(c.getDateOfBaptism());
                b.setFirstCommunion(c.getFirstCommunion());
                b.setMemberid(c.getMemberid());
                b.setMinisterid(c.getMinisterid());
                b.setParishid(c.getParishid());
                b.setPhysicalAddress(c.getPhysicalAddress());
                b.setSponsorid(c.getSponsorid());
                break;
            case "confirmation":
                
                break;
            case "matrimonial":
                
                break;
            case "death":
                
                break;
            default:
                break;
                
        }
        response.sendRedirect(r_view+"_report.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
