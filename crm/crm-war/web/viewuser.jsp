<%-- 
    Document   : viewuser
    Created on : Oct 26, 2017, 12:47:33 AM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">User Management</jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                          <h2>View System User #ID: ${user.u.id}  </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">Settings 1</a>
                              </li>
                              <li><a href="#">Settings 2</a>
                              </li>
                            </ul>
                          </li>
                          <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>
                       <div id="wizard" class="form_wizard wizard_horizontal">
                        <h:form  styleClass="form-horizontal form-label-left" enctype="multipart/form-data">
                            <h:outputLabel>Users Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{user.u.fname}" title="First Name" required="true" requiredMessage="The First Name field is required.">
                                        <f:validateLength maximum="20" />
                                    </h:inputText>
                                    <h:message for="fname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{user.u.lname}" title="Last Name" required="true" requiredMessage="The Last Name field is required.">
                                        <f:validateLength maximum="20" />
                                    </h:inputText>
                                    <h:message for="lname" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{user.u.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required." converterMessage="Please provide date of firstCommunion in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dob" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natid" value="#{user.u.natID}" title="National ID / Passport Number" required="true" requiredMessage="The National ID / Passport Number field is required.">
                                        <f:validateLength maximum="15" />
                                    </h:inputText>
                                    <h:message for="natid" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Designation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="designation" value="#{user.u.designation}" title="Designation" required="true" requiredMessage="The Designation field is required.">
                                        <f:validateLength maximum="200" />
                                    </h:inputText>
                                    <h:message for="designation" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Username</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText style="ed" styleClass="form-control has-feedback-left" id="username" value="#{user.u.username}" title="Username" required="true" requiredMessage="The Username field is required.">
                                       <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="username" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Password </label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputSecret styleClass="form-control has-feedback-left" id="password" value="#{user.password}" title="Password" required="true" requiredMessage="The Password field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputSecret>
                                    <h:message for="password" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirm Password </label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputSecret styleClass="form-control has-feedback-left" id="con_password" value="#{user.con_password}" title="Confirm Password" required="true" requiredMessage="The Confirm Password field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputSecret>
                                    <h:message for="con_password" style="color: red"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">User Group</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback-left" id="usergroup" value="#{user.u.usergroup}"  title="usergroup" required="true" requiredMessage="The Usergroup field is required.">
                                        <f:selectItem itemLabel="Select User Group" itemValue="" />
                                        <f:selectItem itemLabel="Administrator" itemValue="100" />
                                        <f:selectItem itemLabel="Secretary" itemValue="50" />
                                    </h:selectOneMenu>
                                    <h:message for="usergroup" style="color: red"/>
                               </div>
                            </div>
                            <hr> 
                            <h:commandButton value="Update User" action="#{user.update()}" styleClass="btn btn-primary"/>
                            <a href="users.jsp" value="" class="btn btn-danger">Cancel</a>
                        </h:form>    
                   </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</crm:mainTemplate>
