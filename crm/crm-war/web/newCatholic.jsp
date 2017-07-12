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
            <!-- page content -->
              <div class="">
                
                <div class="row">

                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Create Record Wizard Step </h2>
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
                        <div id="wizard" class="form_wizard wizard_horizontal">
                          <ul class="wizard_steps">
                            <li>
                              <a href="newCatholic.jsp">
                                <span class="step_no" style="color: window; font-weight: bold">1</span>
                                <span class="step_descr" style="color: black; ">
                                    Step 1<br />
                                    <small>Personal Details</small>
                                </span>
                              </a>
                            </li>
                            <li>
                              <a href="newBaptism.jsp">
                                <span class="step_no" >2</span>
                                <span class="step_descr" >
                                    Step 2<br />
                                    <small>Baptism Details</small>
                                </span>
                              </a>
                            </li>
                            
                          </ul>
                          <div id="step-1">
                              <h:form >
                                  <h4>Personal Information</h4>
                                  <hr>
                                  <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" ><h:outputLabel value="First Name:" for="fname" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                         <h:inputText id="fname" value="#{catholic.c.fname}" title="Fname" required="true" requiredMessage="The First Name field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Middle Name:" for="mname" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="mname" value="#{catholic.c.mname}" title="Mname" style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Last Name:" for="lname" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="lname" value="#{catholic.c.lname}" title="Lname" required="true" requiredMessage="The Last Name field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" ><h:outputLabel value="Sex:" for="sex" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="sex" value="#{catholic.c.sex}" title="Sex" required="true" requiredMessage="The Sex field is required." style="width: 100%; padding: 1.5%" />
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Dob:" for="dob" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="dob" value="#{catholic.c.dob}" title="Dob" required="true" requiredMessage="The Dob field is required.">
                                          <f:convertDateTime pattern="MM/dd/yyyy" />
                                      </h:inputText>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Age:" for="age" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="age" value="#{catholic.c.age}" title="Age" required="true" requiredMessage="The Age field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" ><h:outputLabel value="PlaceOfBirth:" for="placeOfBirth" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="placeOfBirth" value="#{catholic.c.placeOfBirth}" title="PlaceOfBirth" required="true" requiredMessage="The PlaceOfBirth field is required." style="width: 100%; padding: 1.5%" />
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" ><h:outputLabel value="Contact:" for="contact" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="contact" value="#{catholic.c.contact}" title="Contact" required="true" requiredMessage="The Contact field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <h4>Father's Information</h4>
                                  <hr>
                                    <div class="form-group">
                                      <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Father's First Name:" for="ffname" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="ffname" value="#{catholic.c.ffname}" title="Ffname"  style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Father's Middle Name:" for="fmname" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="fmname" value="#{catholic.c.fmname}" title="Fmname"  style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Father's Last Name:" for="lname" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="flname" value="#{catholic.c.flname}" title="Flname" required="true" requiredMessage="The Last Name field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label  class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Father's National ID:" for="fnatID" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                          <h:inputText id="fnatID" value="#{catholic.c.fnatID}" title="FnatID" required="true" requiredMessage="The National ID field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <h4>Mother's Information</h4>
                                  <hr>
                                    <div class="form-group">
                                      <label  class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Mother's First Name:" for="mfname" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="mfname" value="#{catholic.c.mfname}" title="Mfname"  style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Mother's Middle Name:" for="mmname" /><span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="mmname" value="#{catholic.c.mmname}" title="Mmname"  style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label  class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Mother's Last Name:" for="mlname" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText id="mlname" value="#{catholic.c.mlname}" title="Mlname" required="true" requiredMessage="The Last Name field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label  class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="Mother's National ID:" for="fnatID" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                          <h:inputText id="mnatID" value="#{catholic.c.mnatID}" title="MnatID" required="true" requiredMessage="The National ID field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <div class="form-group">
                                      <label  class="control-label col-md-3 col-sm-3 col-xs-12"><h:outputLabel value="User ID:" for="fnatID" /></label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                          <h:inputText id="userid" value="#{catholic.c.userid}" title="MnatID" required="true" requiredMessage="Userl ID field is required." style="width: 100%; padding: 1.5%"/>
                                      </div>
                                    </div>
                                      <hr>
                                      <div class="form-group">
                                      <div class="col-md-6 col-sm-6 col-xs-12 ">
                                          <h:commandButton value="Continue" action="#{catholic.add()}" styleClass="btn btn-primary"></h:commandButton>
                                      </div>
                                    </div>

                                  </div>
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
