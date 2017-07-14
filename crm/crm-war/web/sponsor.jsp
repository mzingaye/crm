<%-- 
    Document   : newCatholic
    Created on : Jul 12, 2017, 8:59:43 PM
    Author     : Lyne
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Baptism Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Sponsor Details </h2>
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
                        <h:form  styleClass="form-horizontal form-label-left">
                        <ul class="wizard_steps">
                            <li>
                              <a href="createcatholic.jsp">
                                <span class="step_no">1</span>
                                <span class="step_descr" >
                                    Step 1<br />
                                    <small>Personal Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="sponsor.jsp">
                                <span class="step_no" style="color: #FAFAFA; font-weight: bold">2</span>
                                <span class="step_descr" style="color: black;  font-weight: bold">
                                    Step 2<br />
                                    <small>Sponsor Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="newBaptism.jsp">
                                <span class="step_no" >3</span>
                                <span class="step_descr" >
                                    Step 3<br />
                                    <small>Baptism Details</small>
                                </span>
                              </a>
                            </li>
                          </ul>
                            
                            <h:outputLabel>Sponsor Personal Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{sponsor.s.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="mname" value="#{sponsor.s.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{sponsor.s.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText styleClass="form-control has-feedback-left" id="sex" value="#{sponsor.s.sex}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{sponsor.s.natID}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{sponsor.s.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{sponsor.s.age}" title="Age" required="true" requiredMessage="The Age field is required."/>
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{sponsor.s.contact}" title="Contact" required="true" requiredMessage="The Contact field is required."/>
                                </div>
                            </div> 
                            <hr>
                            <h:commandLink action="createcatholic.jsp" value="Previous Page" styleClass="btn btn-danger"></h:commandLink>
                            <h:commandLink action="newBaptism.jsp" value="Next Page" styleClass="btn btn-primary"></h:commandLink>                           
                            <h:commandButton action="#{sponsor.add()}" value="Save Sponsor" styleClass="btn btn-success"/>
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
           