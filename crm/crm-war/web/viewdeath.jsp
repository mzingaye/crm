<%-- 
    Document   : viewdeath
    Created on : Jul 20, 2017, 12:34:53 AM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Death Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                          <h2>Deceased Record for ${deathRec.b.memberid.fname} ${deathRec.b.memberid.lname}</h2>
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
                                <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{deathRec.b.memberid.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{deathRec.b.memberid.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{deathRec.b.memberid.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{deathRec.b.memberid.sex}"/>
                                </div>
                            </div>
                            
                            <%--div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{deathRec.b.memberid.natID}"/>
                                </div>
                            </div>
                                <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="age" value="#{deathRec.b.memberid.age}"/>
                                </div>
                            </div--%>
                                <hr>
                            </h:form>
                                
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Spouse Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Full Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{deathRec.fullname}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Marriage</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="dom" value="#{deathRec.m.dateOfMarriage}"/>
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
                                    <h:inputText styleClass="form-control has-feedback-left" id="dod" value="#{deathRec.d.dateOfDeath}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of death field is required." converterMessage="Please provide date of death in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dod" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Death</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfDeath" value="#{deathRec.d.placeOfDeath}" title="PlaceOfDeath" required="true" requiredMessage="The PlaceOfDeath field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="placeOfDeath" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Burial</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfBurial" value="#{deathRec.d.dateOfBurial}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfBurial field is required." converterMessage="Please provide date of burial in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dateOfBurial" style="color: red"/>
                                    
                                </div>
                            </div> 
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Burial</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfBurial" value="#{deathRec.d.placeOfBurial}" title="PlaceOfBurial" required="true" requiredMessage="The PlaceOfBurial field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="placeOfBurial" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sacraments Administered</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputTextarea styleClass="tags form-control" id="sacramentAdministered" value="#{deathRec.d.sacramentAdministered}" title="SacramentAdministered" >
                                        <f:validateLength maximum="50" />
                                    </h:inputTextarea>
                                    <h:message for="sacramentAdministered" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Minister</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{deathRec.ministerid}" title="Ministerid" required="true" requiredMessage="The Minister field is required.">
                                    <f:selectItem itemLabel="Select Minister" itemValue="0" />    
                                    <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                    <h:message for="ministerid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Parish</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{deathRec.parishid}" title="Parishid" required="true" requiredMessage="The Parish field is required.">
                                      <f:selectItem itemLabel="Select Parish" itemValue="0" />  
                                     <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                    <h:message for="parishid" style="color: red"/>
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{deathRec.edit()}" value="Update" styleClass="btn btn-success"/>
                            <a href="death.jsp" value="" class="btn btn-danger">Cancel</a>
                        </h:form>

                    </div>
                </div>
              </div>
            </div>
          </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
