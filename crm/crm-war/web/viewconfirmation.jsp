<%-- 
    Document   : viewconfirmation
    Created on : Jul 19, 2017, 10:08:26 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Confirmation Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Confirmation Record  [# <h:outputText value="#{coBean.id}" /> ]  Details </h2>
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
                            <h:form styleClass="form-horizontal form-label-left">
                                <h:outputLabel>Personal Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText readonly="true" styleClass="form-control has-feedback-left" id="fname" value="#{cBean.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText readonly="true" styleClass="form-control has-feedback-left" id="mname" value="#{cBean.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText readonly="true" styleClass="form-control has-feedback-left" id="lname" value="#{cBean.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText readonly="true" styleClass="form-control has-feedback-left" id="sex" value="#{cBean.sex}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText readonly="true" styleClass="form-control has-feedback-left" id="natID" value="#{cBean.natID}"/>
                                </div>
                            </div>
                                <hr>
                            </h:form>
                            <h:outputLabel>Confirmation Information</h:outputLabel>
                            <hr>
                            <!-- GUI for confirmation-->
                            <h:form styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Confirmation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="dateOfConfirmation" value="#{coBean.dateOfConfirmation}" title="DateOfConfirmation" required="true" requiredMessage="The DateOfConfirmation field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="baptizedBy" value="#{coBean.baptizedBy}" title="BaptizedBy" required="true" requiredMessage="The BaptizedBy field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirmed By</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{coBean.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                    <f:selectItem itemLabel="Select Minister"itemValue="0" />    
                                    <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirmed At</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{coBean.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                     <f:selectItem itemLabel="Select Parish"itemValue="0" />    
                                     <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sponsor</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="sponsorid" value="#{coBean.sponsorid}" title="Sponsorid" required="true" requiredMessage="The Sponsorid field is required.">
                                     <f:selectItem itemLabel="Select Sponsor"itemValue="0" />    
                                     <f:selectItems value="#{sponsor.getAll()}" 
                                                           var="s"
                                                           itemLabel="#{s.fname} #{s.lname}"
                                                           itemValue="#{s.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                                <hr>
                                    <h:commandButton action="#{confirmation.edit()}" value="Edit Record" styleClass="btn btn-success"/>
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
