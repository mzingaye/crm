<%-- 
    Document   : viewbaptism
    Created on : Jul 19, 2017, 7:11:48 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Baptism Record</jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
            <!-- page content -->
              <div class="">
                
                <div class="row">

                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                          <h2>Baptism Record [# <h:outputText value="#{baptism.b.id}" /> ] <h:outputText value="#{baptism.c.fname} " /> <h:outputText value="#{baptism.c.lname}" /> Details </h2>
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
                          <h:form id="form" styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Personal Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="fname" value="#{baptism.c.fname}" required="true" requiredMessage="First Name cannot be empty!" >
                                    <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="fname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{baptism.c.mname}">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                    <h:message for="mname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{baptism.c.lname}" required="true" requiredMessage="Last Name cannot be empty!">
                                      <f:validateLength maximum="50" />
                                </h:inputText>
                                  <h:message for="lname" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{baptism.c.sex}" required="true" requiredMessage="Sex is a require field!" >
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
                                    <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="dob" value="#{baptism.c.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of birth field is required."  converterMessage="Please provide date of birth in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dob" style="color: red"/> 
                                </div>
                            </div>
                            <%--div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{baptism.c.natID}" required="true" requiredMessage="National Identity / Passport Number is a required field!" >
                                      <f:validateLength maximum="15" />
                                </h:inputText>  
                                    <h:message for="natID" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{baptism.c.age}" title="Age" required="true" requiredMessage="The Age field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="age" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place of Birth</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="placeOfBirth" value="#{baptism.c.placeOfBirth}" title="placeOfBirth" required="true" requiredMessage="The Place of Birth field is required.">
                                        <f:validateLength maximum="100" />
                                    </h:inputText>
                                    <h:message for="placeOfBirth" style="color: red"/> 
                                </div>
                            </div--%>
                            </h:form>
                            <hr>
                            <h:form  styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="fname" value="#{baptism.s.fname}" title="First Name" required="true" requiredMessage="The First Name field is required.">
                                        
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="fname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{baptism.s.mname}">
                                          <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="mname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{baptism.s.lname}" title="Last Name" required="true" requiredMessage="The Last Name field is required.">
                                      <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="lname" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{baptism.s.sex}" required="true" requiredMessage="Sex is a require field!" >
                                        <f:selectItem itemLabel="Select Sponsor's Sex" itemValue="" />
                                        <f:selectItem itemLabel="Female" itemValue="Female" />
                                        <f:selectItem itemLabel="Male" itemValue="Male" />
                                    </h:selectOneMenu>
                                    <h:message for="sex" style="color: red"/>
                                </div>
                            </div>
                            <%--div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{baptism.s.natID}" title="National ID / Passport Number" required="true" requiredMessage="The National ID / Passport Number field is required.">
                                        <f:validateLength maximum="15" />
                                    </h:inputText>
                                    <h:message for="natID" style="color: red"/>  
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{baptism.s.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of Birth field is required." converterMessage="Please provide date of birth in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    <f:validateLength maximum="50" />
                                    </h:inputText>
                                  <h:message for="dob" style="color: red"/>  
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText  styleClass="form-control has-feedback-left" id="age" value="#{baptism.s.age}" title="Age" required="true" requiredMessage="The Age field is required.">
                                        <f:validateLength maximum="10" />
                                </h:inputText>
                                  <h:message for="age" style="color: red"/>  
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea  styleClass="form-control has-feedback-left" id="contact" value="#{baptism.s.contact}" title="Contact" required="true" requiredMessage="The Contact field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="contact" style="color: red"/>  
                                </div>
                            </div--%> 
                            <hr>
                           
                        </h:form>
                              <h:form styleClass="form-horizontal form-label-left">
                                  <h:outputLabel>Baptism Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptism Reg. Number</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="baptReg" value="#{baptism.b.baptReg}" title="Baptism Reg. Number" required="true" requiredMessage="Baptism Reg. Number field is required.">
                                            <f:validateLength maximum="20" />
                                        </h:inputText>
                                        <h:message for="baptReg" style="color: red"/>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Christian Name</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputText styleClass="form-control has-feedback-left" id="cname" value="#{baptism.b.cname}" title="Christian Name" required="true" requiredMessage="The Chistian Name field is required.">
                                            <f:validateLength maximum="20" />
                                        </h:inputText>
                                        <h:message for="cname" style="color: red"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Baptism</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="dateOfBaptism" value="#{baptism.b.dateOfBaptism}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of baptism field is required." converterMessage="Please provide date of baptism in dd/mm/yyyy format">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="dateOfBaptism" style="color: red"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of First Communion</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <h:inputText  styleClass="form-control has-feedback-left" id="firstCommunion" value="#{baptism.b.firstCommunion}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of first Communion field is required." converterMessage="Please provide date of firstCommunion in dd/mm/yyyy format">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                            <f:validateLength maximum="50" />
                                        </h:inputText>
                                        <h:message for="firstCommunion" style="color: red"/>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Physical Address</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:inputTextarea styleClass="form-control has-feedback-left" id="physicalAddress" value="#{baptism.b.physicalAddress}" title="Physical Address" required="true" requiredMessage="The Physical Address field is required.">
                                           <f:validateLength maximum="255" />
                                        </h:inputTextarea>
                                        <h:message for="physicalAddress" style="color: red"/> 
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Baptism</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:selectOneMenu id="parishid" value="#{baptism.parishid}" styleClass="form-control " title="Place of baptism" required="true" requiredMessage="The Place of baptism field is required.">
                                            <f:selectItem itemLabel="Select Baptism Parish" itemValue="" />
                                            <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                            
                                        </h:selectOneMenu>
                                        <h:message for="parishid" style="color: red"/> 
                                    </div>
                                </div>  
                                <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12">Baptized By</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <h:selectOneMenu id="ministerid" value="#{baptism.ministerid}" styleClass="form-control " title="Baptized By" required="true" requiredMessage="The Baptized by field is required.">
                                            <f:selectItem itemLabel="Select Baptism Minister" itemValue="" />
                                            <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                        </h:selectOneMenu>
                                        <h:message for="ministerid" style="color: red"/> 
                                    </div>
                                </div>
                                <hr>
                                <h:commandButton action="#{baptism.edit()}" value="Update" styleClass="btn btn-primary"/>
                                <a href="baptism.jsp" value="" class="btn btn-danger">Cancel</a>
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
