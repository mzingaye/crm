<%-- 
    Document   : newBaptism
    Created on : Jul 12, 2017, 2:47:04 PM
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
            <!-- page content -->
              <div class="">
                
                <div class="row">

                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Create Baptism Record Wizard </h2>
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
                        <div id="wizard" class="form_wizard wizard_horizontal">
                          <ul class="wizard_steps">
                            <li>
                              <a href="createcatholic.jsp">
                                <span class="step_no">1</span>
                                <span class="step_descr">
                                    Step 1<br />
                                    <small>Personal Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="sponsor.jsp">
                                <span class="step_no" >2</span>
                                <span class="step_descr" >
                                    Step 2<br />
                                    <small>Sponsor Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="newBaptism.jsp">
                                <span class="step_no" style="color: #FAFAFA; font-weight: bold">3</span>
                                <span class="step_descr" style="color: black;  font-weight: bold">
                                    Step 3<br />
                                    <small>Baptism Details</small>
                                </span>
                              </a>
                            </li>
                          </ul>
                              
                                  <h:outputLabel>Baptism Information</h:outputLabel>
                            <hr>
                                 <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Christian Name</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText styleClass="form-control has-feedback-left" id="cname" value="#{bBean.cname}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Baptism</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="dateOfBaptism" value="#{bBean.dateOfBaptism}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required.">
                                            <f:convertDateTime pattern="dd/mm/yyyy" />
                                        </h:inputText>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of First Communion</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="firstCommunion" value="#{bBean.firstCommunion}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required.">
                                            <f:convertDateTime pattern="dd/mm/yyyy" />
                                        </h:inputText>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptism Number</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText styleClass="form-control has-feedback-left" id="baptismNumber" value="#{bBean.baptismNumber}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Physical Address</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputTextarea styleClass="form-control has-feedback-left" id="physicalAddress" value="#{bBean.physicalAddress}"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Baptism</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:selectOneMenu id="parishid" value="#{baptismActions.parish}" styleClass="form-control ">
                                            <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                        </h:selectOneMenu>
                                    </div>
                                </div>  
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized By</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:selectOneMenu id="ministerid" value="#{baptismActions.minister}" styleClass="form-control ">
                                            <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                        </h:selectOneMenu>
                                    </div>
                                </div>
                                <hr>
                                <h:commandLink action="sponsor.jsp" value="Previous Page" styleClass="btn btn-danger"></h:commandLink>
                                <h:commandButton action="#{baptismActions.add()}" value="Save Baptism" styleClass="btn btn-primary"/>
                             </h:form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            <!-- /page content -->
            
             
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
