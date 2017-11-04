<%-- 
    Document   : viewminister
    Created on : Nov 4, 2017, 12:17:43 AM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">System Configuration</jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Catholic Minister Details </h2>
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
                        <h:form  styleClass="form-horizontal form-label-left">
                            
                            <h:outputLabel>Minister #${minister.m.id} Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{minister.m.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{minister.m.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Religious Order</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="morder" value="#{minister.m.morder}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Position</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback-left" id="rank" value="#{minister.m.rank}" title="Position">
                                        <f:selectItem itemLabel="Select Minister's Position" itemValue="0" />
                                        <f:selectItem itemLabel="Archbishop" itemValue="Archbishop" />
                                        <f:selectItem itemLabel="Bishop" itemValue="Bishop" />
                                        <f:selectItem itemLabel="Priest" itemValue="Priest" />
                                        <f:selectItem itemLabel="Deacon" itemValue="Deacon" />
                                        <f:selectItem itemLabel="Sister" itemValue="Sister" />
                                        <f:selectItem itemLabel="Brother" itemValue="Brother" />
                                    </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{minister.m.natID}"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{minister.m.contact}" title="Contact" required="true" requiredMessage="The Contact field is required."/>
                                </div>
                            </div> 
                            <hr> 
                            <h:commandButton value="Update" action="#{minister.edit()}" styleClass="btn btn-primary"/>
                            <h:commandButton value="Cancel" action="#{minister.cancel()}" styleClass="btn btn-danger"/>
                    </h:form>    
                   </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
