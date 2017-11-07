<%-- 
    Document   : adduser
    Created on : Oct 23, 2017, 7:32:07 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:startTemplate>
    <jsp:attribute name="title">CRM Create Account</jsp:attribute>
    <jsp:attribute name="page_title">Create Account</jsp:attribute>
   
    <jsp:attribute name="content">
        
        <f:view>
            <h:form>
                <h:messages  infoStyle="color:darkgreen" errorStyle="color:darkred" />
              <h1>Create Account</h1>
                    <label >Username</label>
                    <div >
                        <h:inputText styleClass="form-control has-feedback-left" id="username" value="#{uBean.username}" title="Username" required="true" requiredMessage="The Username field is required.">
                            <f:validateLength maximum="20" />
                        </h:inputText>
                        <h:message for="username" style="color: red"/>
                    </div>
                    <label >Password</label>
                    <div >
                        <h:inputSecret styleClass="form-control has-feedback-left" id="password" value="#{user.password}" title="Password" required="true" requiredMessage="The Password field is required.">
                            <f:validateLength maximum="255" />
                        </h:inputSecret>
                        <h:message for="password" style="color: red"/>
                    </div>
                    <label >Confirm Password</label>
                    <div>
                        <h:inputSecret styleClass="form-control has-feedback-left" id="con_password" value="#{user.con_password}" title="Confirm Password" required="true" requiredMessage="The Confirm Password field is required.">
                            <f:validateLength maximum="255" />
                        </h:inputSecret>
                        <h:message for="con_password" style="color: red"/>
                    </div>
                    <label >Designation</label>
                    <div >
                        <h:inputText styleClass="form-control has-feedback-left" id="designation" value="#{uBean.designation}" title="Designation" required="true" requiredMessage="The Designation field is required.">
                            <f:validateLength maximum="50" />
                        </h:inputText>
                        <h:message for="designation" style="color: red"/>
                    </div>
                    <label >Usergroup</label>
                    <div >
                        <h:selectOneMenu styleClass="form-control has-feedback-left" id="usergroup" value="#{uBean.usergroup}" title="User Group" required="true" requiredMessage="The User Group field is required.">
                            <f:selectItem itemLabel="Select User Group" itemValue="" />
                            <f:selectItem itemLabel="Administrator" itemValue="100" />
                            <f:selectItem itemLabel="Secretary" itemValue="50" />
                            <f:validateLength maximum="15" />
                        </h:selectOneMenu>
                        <h:message for="usergroup" style="color: red"/>
                   </div>
              <div style="padding-left:100px">
                  <h:commandButton value="Create" action="#{user.add()}" styleClass="btn btn-default" />
               </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already have an account ?
                    <h:commandLink action="faces/index.jsp" value="Log in"/>  
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                    <a href="faces/index.jsp"><h1><i class="fa fa-bank"></i> Catholic Records Management!</h1></a>
                  <p>Lyne Systems Private Limited &copy; 2017, All Rights Reserved. Privacy and Terms</p>
                </div>
              </div>
            </h:form>
        </f:view>
    </jsp:attribute>
</crm:startTemplate>