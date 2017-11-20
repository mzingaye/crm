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
                          <h2>Confirmation Record  [# <h:outputText value="#{confirmation.co.id}" /> ] ${confirmation.b.memberid.fname} ${confirmation.b.memberid.lname} Details </h2>
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
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{confirmation.b.memberid.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{confirmation.b.memberid.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{confirmation.b.memberid.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{confirmation.b.memberid.sex}"/>
                                </div>
                            </div>
                            
                            <%--div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{confirmation.b.memberid.natID}"/>
                                </div>
                            </div--%>
                                <hr>
                            </h:form>
                            <h:outputLabel>Confirmation Information</h:outputLabel>
                            <hr>
                            <!-- GUI for confirmation-->
                            <h:form styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized At</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback" id="baptizedat" value="#{confirmation.b.parishid.name} " title="BaptizedAt" required="true" requiredMessage="The Baptized At field is required."/>
                                    <h:message for="baptizedat" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptism Reg. Number</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback" id="baptReg" value="#{confirmation.b.baptReg} " title="Baptism Reg. Number" required="true" requiredMessage="The Baptism Reg. Number field is required."/>
                                    <h:message for="baptReg" style="color: red"/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback" id="baptizedBy" value="#{confirmation.b.ministerid.rank} #{confirmation.b.ministerid.fname} #{confirmation.b.ministerid.lname}" title="BaptizedBy" required="true" requiredMessage="The BaptizedBy field is required."/>
                                    <h:message for="baptizedBy" style="color: red"/>
                                </div>
                            </div>   
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Baptism</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback" id="dateOfbaptism" value="#{confirmation.b.dateOfBaptism}" title="DateOfBaptism" required="true" requiredMessage="The DateOfBaptism field is required."  converterMessage="Please provide date of baptism in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                  <h:message for="dateOfbaptism" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Confirmation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="dateOfConfirmation" value="#{confirmation.co.dateOfConfirmation}" title="DateOfConfirmation" required="true" requiredMessage="The DateOfConfirmation field is required."  converterMessage="Please provide date of confirmation in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                  <h:message for="dateOfConfirmation" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirmed By</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{confirmation.minister}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                    <f:selectItem itemLabel="Select Minister"itemValue="" />    
                                    <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                    <h:message for="ministerid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirmed At</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{confirmation.parish}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                     <f:selectItem itemLabel="Select Parish"itemValue="" />    
                                     <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                    <h:message for="parishid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sponsor</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="sponsorid" value="#{confirmation.sponsor}" title="Sponsorid" required="true" requiredMessage="The Sponsorid field is required.">
                                     <f:selectItem itemLabel="Select Sponsor"itemValue="" />    
                                     <f:selectItems value="#{sponsor.getAll()}" 
                                                           var="s"
                                                           itemLabel="#{s.fname} #{s.lname}"
                                                           itemValue="#{s.id}" />
                                </h:selectOneMenu>
                                  <h:message for="sponsorid" style="color: red"/>
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{confirmation.edit()}" value="Update" styleClass="btn btn-success"/>
                            <a href="confirmation.jsp" value="" class="btn btn-danger">Cancel</a>
                            </h:form>
                        </div>
                    </div>
                </div>
              </div>
            </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
