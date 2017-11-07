/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import beans.UserBean;
import entities.User;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import models.UserFacade;
import org.apache.log4j.Logger;

/**
 *
 * @author Lyne
 */
public class LoginFilter implements Filter {
    @Inject 
    private UserBean uBean;
    
    @EJB
    private UserFacade userFacade;
    
    private static final boolean debug = false;

    private FilterConfig filterConfig = null;
    
    static boolean  login_status = false;
    
    static final Logger log = Logger.getLogger(LoginFilter.class);
    
    public LoginFilter() {
        
    }    
    
    private void doBeforeProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        
        if (debug) {
            log("LoginFilter:DoBeforeProcessing");
        }
        
    }    
    
    private void doAfterProcessing(ServletRequest request, ServletResponse response)
            throws IOException, ServletException {
        if (debug) {
            log("LoginFilter:DoAfterProcessing");
        }
        
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (request instanceof HttpServletRequest) {
            HttpServletRequest req = (HttpServletRequest)request;
            String username = req.getRemoteUser();
            String  browserDetails  =   req.getHeader("User-Agent");
            String host = req.getRemoteHost();
            String user = req.getRemoteUser();
            String ip = req.getRemoteAddr();
            if(username != null){
                User u = userFacade.find(username);
                uBean.setId(u.getId());
                uBean.setCreatedAt(u.getCreatedAt());
                uBean.setDeleteFlag(u.getDeleteFlag());
                uBean.setDesignation(u.getDesignation());
                uBean.setDob(u.getDob());
                uBean.setFname(u.getFname());
                uBean.setImg(u.getImg());
                uBean.setLname(u.getLname());
                uBean.setNatID(u.getNatID());
                uBean.setUsergroup(u.getUsergroup());
                uBean.setUsername(u.getUsername());
                uBean.setU(u);
                if(LoginFilter.login_status == false){
                   log.info("#"+uBean.getId()+";"+user+";"+ip+";"+host+";"+browserDetails+" => LOGGED IN");
                   HttpSession ses = req.getSession();
                   ses.setAttribute("username", username);
                   LoginFilter.login_status = true;
                }
                
            }
            else
                System.out.println("No users logged in"); 
        }
        if (debug) {
            log("LoginFilter:doFilter()");
        }
        
        doBeforeProcessing(request, response);
        
       
        
        Throwable problem = null;
        try {
            chain.doFilter(request, response);
        } catch (Throwable t) {
            problem = t;
            t.printStackTrace();
        }
        
        doAfterProcessing(request, response);

        if (problem != null) {
            if (problem instanceof ServletException) {
                throw (ServletException) problem;
            }
            if (problem instanceof IOException) {
                throw (IOException) problem;
            }
            sendProcessingError(problem, response);
        }
    }

    public FilterConfig getFilterConfig() {
        return (this.filterConfig);
    }

    
    public void setFilterConfig(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    
    public void destroy() {        
    }

    
    public void init(FilterConfig filterConfig) {        
        this.filterConfig = filterConfig;
        if (filterConfig != null) {
            if (debug) {                
                log("LoginFilter:Initializing filter");
            }
        }
    }

    
    @Override
    public String toString() {
        if (filterConfig == null) {
            return ("LoginFilter()");
        }
        StringBuffer sb = new StringBuffer("LoginFilter(");
        sb.append(filterConfig);
        sb.append(")");
        return (sb.toString());
    }
    
    private void sendProcessingError(Throwable t, ServletResponse response) {
        String stackTrace = getStackTrace(t);        
        
        if (stackTrace != null && !stackTrace.equals("")) {
            try {
                response.setContentType("text/html");
                PrintStream ps = new PrintStream(response.getOutputStream());
                PrintWriter pw = new PrintWriter(ps);                
                pw.print("<html>\n<head>\n<title>Error</title>\n</head>\n<body>\n"); //NOI18N

                // PENDING! Localize this for next official release
                pw.print("<h1>The resource did not process correctly</h1>\n<pre>\n");                
                pw.print(stackTrace);                
                pw.print("</pre></body>\n</html>"); //NOI18N
                pw.close();
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        } else {
            try {
                PrintStream ps = new PrintStream(response.getOutputStream());
                t.printStackTrace(ps);
                ps.close();
                response.getOutputStream().close();
            } catch (Exception ex) {
            }
        }
    }
    
    public static String getStackTrace(Throwable t) {
        String stackTrace = null;
        try {
            StringWriter sw = new StringWriter();
            PrintWriter pw = new PrintWriter(sw);
            t.printStackTrace(pw);
            pw.close();
            sw.close();
            stackTrace = sw.getBuffer().toString();
        } catch (Exception ex) {
        }
        return stackTrace;
    }
    
    public void log(String msg) {
        filterConfig.getServletContext().log(msg);        
    }
    
}
