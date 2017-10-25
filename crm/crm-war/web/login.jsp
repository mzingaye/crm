<%-- 
    Document   : login
    Created on : Oct 23, 2017, 7:33:22 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:startTemplate>
    <jsp:attribute name="title">CRM Login</jsp:attribute>
    <jsp:attribute name="page_title">Login</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            <form action="j_security_check"  method="post">
              <h1>Login Form</h1>
              
              <label >Username</label>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="j_username"  required="" />
              </div>
              <label >Password</label>
              <div>
                <input type="password" class="form-control" placeholder="Password" name="j_password" required="" />
              </div>
              <div>
                    <input type="submit" value="Log in" class="btn btn-default"/>
                    <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="adduser.jsp" >Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-bank"></i> Catholic Records Management!</h1>
                  <p>Lyne Systems Private Limited &copy; 2017, All Rights Reserved. Privacy and Terms</p>
                </div>
              </div>
            </form>
        </f:view>
    </jsp:attribute>
</crm:startTemplate>