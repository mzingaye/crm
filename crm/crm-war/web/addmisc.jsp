<%-- 
    Document   : addmisc
    Created on : 08 Nov 2017, 7:26:32 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Miscellaneous Record</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            <!-- page content -->
              <div class="">
                
                <div class="row">

                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Create Miscellaneous Record for ${misc.c.fname} ${misc.c.lname} </h2>
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
                                <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="fname" value="#{misc.c.fname}" required="true" requiredMessage="First Name cannot be empty!" >
                                    <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="fname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{misc.c.mname}">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                    <h:message for="mname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{misc.c.lname}" required="true" requiredMessage="Last Name cannot be empty!">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="lname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{misc.c.sex}" required="true" requiredMessage="Sex is a require field!" >
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
                                    <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="dob" value="#{misc.c.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of birth field is required."  converterMessage="Please provide date of birth in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dob" style="color: red"/> 
                                </div>
                            </div>
                            <%--div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{misc.c.natID}" required="true" requiredMessage="National Identity / Passport Number is a required field!" >
                                      <f:validateLength maximum="15" />
                                </h:inputText>  
                                    <h:message for="natID" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="age" value="#{misc.c.age}" title="Age" required="true" requiredMessage="The Age field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="age" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place of Birth</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="placeOfBirth" value="#{misc.c.placeOfBirth}" title="placeOfBirth" required="true" requiredMessage="The Place of Birth field is required.">
                                        <f:validateLength maximum="100" />
                                    </h:inputText>
                                    <h:message for="placeOfBirth" style="color: red"/> 
                                </div>
                            </div--%>
                            </h:form>
                            <hr>
                            
                              <h:form styleClass="form-horizontal form-label-left">
                                  <h:outputLabel>Miscellaneous Information</h:outputLabel>
                            <hr>
                                 <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Tribe</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText styleClass="form-control has-feedback-left" id="tribe" value="#{misc.m.tribe}" title="tribe" required="true" requiredMessage="The tribe field is required.">
                                            <f:validateLength maximum="20" />
                                        </h:inputText>
                                        <h:message for="tribe" style="color: red"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Employment Status</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="empStatus" value="#{misc.m.empStatus}" title="empStatus" >
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="empStatus" style="color: red"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Financial Income</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="income" value="#{misc.m.income}" title="income">
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="income" style="color: red"/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Current Parish</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:selectOneMenu id="parishid" value="#{misc.parishid}" styleClass="form-control " title="Current Parish" required="true" requiredMessage="The current parish field is required.">
                                            <f:selectItem itemLabel="Select Current Parish" itemValue="" />
                                            <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                            
                                        </h:selectOneMenu>
                                        <h:message for="parishid" style="color: red"/> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Area</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="area" value="#{misc.m.area}" title="area" required="true" requiredMessage="The area field is required.">
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="area" style="color: red"/> 
                                    </div>
                                </div>  
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Small Christian Community</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="scc" value="#{misc.m.scc}" title="scc" required="true" requiredMessage="The small christian community field is required.">
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="scc" style="color: red"/>  
                                    </div>
                                </div>
                                <hr>
                                <h:commandButton action="#{misc.add()}" value="Save" styleClass="btn btn-primary"/>
                                <a href="misc.jsp" value="" class="btn btn-danger">Cancel</a>
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
