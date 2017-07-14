<%-- 
    Document   : parish
    Created on : Jul 14, 2017, 11:05:49 AM
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
                        <h2>Parish Details </h2>
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
                        <ul class="wizard_steps">
                            <li>
                              <a href="parish.jsp">
                                <span class="step_no" style="color: #FAFAFA; font-weight: bold">1</span>
                                <span class="step_descr" style="color: black; font-weight: bold ">
                                    Step 1<br />
                                    <small>Parish Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="minister.jsp">
                                <span class="step_no" >2</span>
                                <span class="step_descr" >
                                    Step 2<br />
                                    <small>Catholic Minister Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="users.jsp">
                                <span class="step_no" >3</span>
                                <span class="step_descr" >
                                    Step 3<br />
                                    <small>System Users</small>
                                </span>
                              </a>
                            </li>
                          </ul>
                            
                            <h:outputLabel>Church Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Church Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText styleClass="form-control has-feedback-left" id="name" value="#{parish.p.name}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Physical Address</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="physicalAddress" value="#{parish.p.physicalAddress}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact Details</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="contact" value="#{parish.p.contact}"/>
                                </div>
                            </div>
                             
                            <hr> 
                            <h:commandButton value="Save Parish" action="#{parish.add()}" styleClass="btn btn-primary"/>
                    </h:form>    
                   </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>

