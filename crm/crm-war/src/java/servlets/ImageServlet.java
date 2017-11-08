/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.UserBean;
import entities.User;
import java.io.IOException;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class ImageServlet extends HttpServlet {
    @EJB
    private UserFacade userFacade;
    
    @Inject 
    private UserBean uBean;
    
    static final Logger LOG = Logger.getLogger(ImageServlet.class);
    
    private User u;
    
    private byte[] image;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        if(!request.getParameter("id").equals("")){
            int id =Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("f");
            try{
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
            catch(NullPointerException n){
                LOG.info("User #"+uBean.getId()+": "+uBean.getUsername()+"  => No profile picture!");
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
