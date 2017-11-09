<%-- 
    Document   : viewcatholic
    Created on : Jul 19, 2017, 7:10:59 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Member Record for ${catholic.c.fname} ${catholic.c.lname}</jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                          <h2>Member Record [ ${catholic.c.id} ] - Personal Details </h2>
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
                        
                            <h:form id="form" styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Personal Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}" required="true" requiredMessage="First Name cannot be empty!" >
                                    <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="fname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mname" value="#{catholic.c.mname}">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                    <h:message for="mname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{catholic.c.lname}" required="true" requiredMessage="Last Name cannot be empty!">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="lname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback-left" id="sex" value="#{catholic.c.sex}" required="true" requiredMessage="Sex is a require field!" >
                                        <f:selectItem itemLabel="Select Member's Sex" itemValue="" />
                                        <f:selectItem itemLabel="Female" itemValue="Female" />
                                        <f:selectItem itemLabel="Male" itemValue="Male" />
                                    </h:selectOneMenu>
                                    <h:message for="sex" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{catholic.c.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of birth field is required."  converterMessage="Please provide date of birth in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dob" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}" required="true" requiredMessage="National Identity / Passport Number is a required field!" >
                                      <f:validateLength maximum="15" />
                                </h:inputText>  
                                    <h:message for="natID" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{catholic.c.age}" title="Age" required="true" requiredMessage="The Age field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="age" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place of Birth</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="placeOfBirth" value="#{catholic.c.placeOfBirth}" title="placeOfBirth" required="true" requiredMessage="The Place of Birth field is required.">
                                        <f:validateLength maximum="100" />
                                    </h:inputText>
                                    <h:message for="placeOfBirth" style="color: red"/> 
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{catholic.c.contact}" title="Contact" required="true" requiredMessage="The Contact field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="contact" style="color: red"/> 
                                </div>
                            </div> 
                            <hr>
                            <h:outputLabel>Father's Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="ffname" value="#{catholic.c.ffname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="ffname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="fmname" value="#{catholic.c.fmname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="fmname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="flname" value="#{catholic.c.flname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="flname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="fnatID" value="#{catholic.c.fnatID}">
                                        <f:validateLength maximum="15" />
                                </h:inputText>
                                    <h:message for="fnatID" style="color: red"/> 
                                </div>
                            </div>
                            <hr>
                                <h:outputLabel>Mother's Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mfname" value="#{catholic.c.mfname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="mfname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mmname" value="#{catholic.c.mmname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="mmname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mlname" value="#{catholic.c.mlname}">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="mlname" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="mnatID" value="#{catholic.c.mnatID}">
                                        <f:validateLength maximum="15" />
                                </h:inputText>
                                    <h:message for="mnatID" style="color: red"/> 
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{catholic.edit()}" value="Update" styleClass="btn btn-success"/>
                            <h:commandButton value="Cancel" action="#{catholic.cancel()}" styleClass="btn btn-danger"/>
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

