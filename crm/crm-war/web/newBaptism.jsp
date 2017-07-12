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
                        <h2>Create Record Wizard </h2>
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


                        <!-- Smart Wizard -->
                        <p>This is a New Baptism Form Wizard will guide you through the creation of a new baptism record.</p>
                        <div id="wizard" class="form_wizard wizard_horizontal">
                          <ul class="wizard_steps">
                            <li>
                              <a href="newCatholic.jsp">
                                <span class="step_no">1</span>
                                <span class="step_descr">
                                                  Step 1<br />
                                                  <small>Personal Details</small>
                                              </span>
                              </a>
                            </li>
                            <li>
                              <a href="newBaptism.jsp">
                                <span class="step_no" style="color: black">2</span>
                                <span class="step_descr" style="color: black">
                                                  Step 2<br />
                                                  <small>Baptism Details</small>
                                              </span>
                              </a>
                            </li>
                            
                          </ul>
                          <div id="step-1">
                              <h:form >
                                  <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"><h:outputLabel value="Parish Name"></h:outputLabel><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="name" value="#{parish.p.name}" style="width: 100%; padding: 1.5%" />
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name"><h:outputLabel value="Contact"></h:outputLabel><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="contact" value="#{parish.p.contact}" style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Physical Address"></h:outputLabel></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="physicalAddress" value="#{parish.p.physicalAddress}" style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:commandButton value="Save Record" action="#{parish.add()}"></h:commandButton>
                                      </div>
                                    </div>

                                  </div>
                             </h:form>


                              <h:form>
                                  <h1><h:outputText value="Create/Edit"/></h1>
                                  <h:panelGrid columns="2">
                                      <h:outputLabel value="Id:" for="id" />
                                      <h:inputText id="id" value="#{baptism.b.id}" title="Id" required="true" requiredMessage="The Id field is required."/>
                                      <h:outputLabel value="Cname:" for="cname" />
                                      <h:inputText id="cname" value="#{baptism.b.cname}" title="Cname" required="true" requiredMessage="The Cname field is required."/>
                                      <h:outputLabel value="DateOfBaptism:" for="dateOfBaptism" />
                                      <h:inputText id="dateOfBaptism" value="#{baptism.b.dateOfBaptism}" title="DateOfBaptism" required="true" requiredMessage="The DateOfBaptism field is required.">
                                          <f:convertDateTime pattern="MM/dd/yyyy" />
                                      </h:inputText>
                                      <h:outputLabel value="FirstCommunion:" for="firstCommunion" />
                                      <h:inputText id="firstCommunion" value="#{baptism.b.firstCommunion}" title="FirstCommunion" >
                                          <f:convertDateTime pattern="MM/dd/yyyy" />
                                      </h:inputText>
                                      <h:outputLabel value="BaptismNumber:" for="baptismNumber" />
                                      <h:inputText id="baptismNumber" value="#{baptism.b.baptismNumber}" title="BaptismNumber" required="true" requiredMessage="The BaptismNumber field is required."/>
                                      <h:outputLabel value="PhysicalAddress:" for="physicalAddress" />
                                      <h:inputText id="physicalAddress" value="#{baptism.b.physicalAddress}" title="PhysicalAddress" required="true" requiredMessage="The PhysicalAddress field is required."/>
                                      <h:outputLabel value="Userid:" for="userid" />
                                      <h:selectOneMenu id="userid" value="#{baptism.b.userid}" title="Userid" required="true" requiredMessage="The Userid field is required.">
                                          <!-- TODO: update below reference to list of available items-->
                                          <f:selectItems value="#{fixme}"/>
                                      </h:selectOneMenu>
                                      <h:outputLabel value="Memberid:" for="memberid" />
                                      <h:selectOneMenu id="memberid" value="#{baptism.b.memberid}" title="Memberid" required="true" requiredMessage="The Memberid field is required.">
                                          <!-- TODO: update below reference to list of available items-->
                                          <f:selectItems value="#{fixme}"/>
                                      </h:selectOneMenu>
                                      <h:outputLabel value="Parishid:" for="parishid" />
                                      <h:selectOneMenu id="parishid" value="#{baptism.b.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                          <!-- TODO: update below reference to list of available items-->
                                          <f:selectItems value="#{fixme}"/>
                                      </h:selectOneMenu>
                                      <h:outputLabel value="Ministerid:" for="ministerid" />
                                      <h:selectOneMenu id="ministerid" value="#{baptism.b.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                          <!-- TODO: update below reference to list of available items-->
                                          <f:selectItems value="#{fixme}"/>
                                      </h:selectOneMenu>
                                      <h:outputLabel value="Sponsorid:" for="sponsorid" />
                                      <h:selectOneMenu id="sponsorid" value="#{baptism.b.sponsorid}" title="Sponsorid" required="true" requiredMessage="The Sponsorid field is required.">
                                          <!-- TODO: update below reference to list of available items-->
                                          <f:selectItems value="#{fixme}"/>
                                      </h:selectOneMenu>
                                  </h:panelGrid>
                              </h:form>

                          </div>
                         
                        </div>
                        <!-- End SmartWizard Content -->

                      </div>
                    </div>
                  </div>
                </div>
              </div>
            <!-- /page content -->
            
             
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
