<%-- 
    Document   : createdeathrec
    Created on : Jul 14, 2017, 1:23:08 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Death Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Deceased Details </h2>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Member Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{catholic.memberID}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{catholic.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mname" value="#{catholic.c.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{catholic.c.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="sex" value="#{catholic.c.sex}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                                <hr>
                            </h:form>
                                
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Spouse Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Spouse Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{catholic.memberID}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{catholic.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{catholic.c.lname}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>

                        <h:form  styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Death Record Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Death</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dod" value="#{deathRec.d.dod}" title="dd/mm/yyyy" required="true" requiredMessage="The Dod field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Death</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfDeath" value="#{deathRec.d.placeOfDeath}" title="PlaceOfDeath" required="true" requiredMessage="The PlaceOfDeath field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Burial</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfBurial" value="#{deathRec.d.dateOfBurial}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfBurial field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                    
                                </div>
                            </div> 
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Burial</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfBurial" value="#{deathRec.d.placeOfBurial}" title="PlaceOfBurial" required="true" requiredMessage="The PlaceOfBurial field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sacraments Administered</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputTextarea styleClass="tags form-control" id="sacramentAdministered" value="#{deathRec.d.sacramentAdministered}" title="SacramentAdministered" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Minister</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{deathRec.ministerId}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Parish</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{deathRec.parishId}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{deathRec.add()}" value="Save Confirmation" styleClass="btn btn-success"/>
                        </h:form>

                    </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
