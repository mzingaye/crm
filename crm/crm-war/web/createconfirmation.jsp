<%-- 
    Document   : createconfirmation
    Created on : Jul 14, 2017, 1:22:22 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Confirmation Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Confirmation Details </h2>
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
                                  <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{catholic.c.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{catholic.c.age}" title="Age" required="true" requiredMessage="The Age field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place of Birth</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="placeOfBirth" value="#{catholic.c.placeOfBirth}" title="placeOfBirth" required="true" requiredMessage="The Place of Birth field is required."/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{catholic.c.contact}" title="Contact" required="true" requiredMessage="The Contact field is required."/>
                                </div>
                            </div> 
                            </h:form>
                         
                            <!-- GUI for confirmation-->
                            <h:form styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Confirmation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="dateOfConfirmation" value="#{confirmation.c.dateOfConfirmation}" title="DateOfConfirmation" required="true" requiredMessage="The DateOfConfirmation field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="baptizedBy" value="#{confirmation.c.baptizedBy}" title="BaptizedBy" required="true" requiredMessage="The BaptizedBy field is required."/>
                                </div>
                            </div>
                                    
                                    <h:outputLabel value="Userid:" for="userid" />
                                    <h:selectOneMenu id="userid" value="#{confirmation.c.userid}" title="Userid" required="true" requiredMessage="The Userid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Ministerid:" for="ministerid" />
                                    <h:selectOneMenu id="ministerid" value="#{confirmation.c.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Memberid:" for="memberid" />
                                    <h:selectOneMenu id="memberid" value="#{confirmation.c.memberid}" title="Memberid" required="true" requiredMessage="The Memberid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Parishid:" for="parishid" />
                                    <h:selectOneMenu id="parishid" value="#{confirmation.c.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Sponsorid:" for="sponsorid" />
                                    <h:selectOneMenu id="sponsorid" value="#{confirmation.c.sponsorid}" title="Sponsorid" required="true" requiredMessage="The Sponsorid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
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