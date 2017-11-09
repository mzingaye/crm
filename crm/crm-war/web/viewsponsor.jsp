<%-- 
    Document   : viewsponsor
    Created on : Jul 19, 2017, 7:11:29 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Sponsor Record for ${sponsor.s.fname} ${sponsor.s.lname}</jsp:attribute>
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>  Sponsor Record [ ${sponsor.s.id} ] - Sponsor Details </h2>
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
                    <div class="x_content">
                        <div id="wizard" class="form_wizard wizard_horizontal">
                            <h:outputLabel>Sponsor Information</h:outputLabel>
                            <hr>
                            <h:form  styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{sponsor.s.fname}" title="First Name" required="true" requiredMessage="The First Name field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="fname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="mname" value="#{sponsor.s.mname}">
                                          <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="mname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{sponsor.s.lname}" title="Last Name" required="true" requiredMessage="The Last Name field is required.">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="lname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback-left" id="sex" value="#{sponsor.s.sex}" required="true" requiredMessage="Sex is a require field!" >
                                        <f:selectItem itemLabel="Select Sponsor's Sex" itemValue="" />
                                        <f:selectItem itemLabel="Female" itemValue="Female" />
                                        <f:selectItem itemLabel="Male" itemValue="Male" />
                                    </h:selectOneMenu>
                                    <h:message for="sex" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{sponsor.s.natID}" title="National ID / Passport Number" required="true" requiredMessage="The National ID / Passport Number field is required.">
                                        <f:validateLength maximum="15" />
                                    </h:inputText>
                                    <h:message for="natID" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{sponsor.s.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of Birth field is required." converterMessage="Please provide date of birth in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    <f:validateLength maximum="50" />
                                    </h:inputText>
                                  <h:message for="dob" style="color: red"/>  
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{sponsor.s.age}" title="Age" required="true" requiredMessage="The Age field is required.">
                                        <f:validateLength maximum="10" />
                                </h:inputText>
                                  <h:message for="age" style="color: red"/>  
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{sponsor.s.contact}" title="Contact" required="true" requiredMessage="The Contact field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="contact" style="color: red"/>  
                                </div>
                            </div> 
                            <hr>
                            <h:commandButton action="#{sponsor.edit()}" value="Update" styleClass="btn btn-success"/>
                            <a href="sponsors.jsp" value="" class="btn btn-danger">Cancel</a>
                        </h:form>
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
           
