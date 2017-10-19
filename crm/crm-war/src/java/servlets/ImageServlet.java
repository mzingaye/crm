/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import entities.User;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UserFacade;

/**
 *
 * @author Lyne
 */
public class ImageServlet extends HttpServlet {
    @EJB
    private UserFacade userFacade;
    
    private User u;
    
    private byte[] image;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        if(!request.getParameter("id").equals("")){
        int id =Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("f");
        u = this.userFacade.find(id);
        switch(name){
            case "image":
                image = u.getImg(); 
                break;
            default:
                break;
        }
        response.setContentType("image/jpeg");
        try (ServletOutputStream outputStream = response.getOutputStream()) {
            outputStream.write(image);
        }
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
