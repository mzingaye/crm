<%-- 
    Document   : viewmatrimonial
    Created on : Jul 19, 2017, 11:06:36 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">View Matrimonial Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Matrimonial Details </h2>
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
                            <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Husband Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{catholic.memberID}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{catholic.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Wife Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{catholic.memberID}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{catholic.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Husband Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Sponsor Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{sponsor.sponsorId}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{sponsor.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Wife Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Sponsor Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="memeberid" value="#{sponsor.sponsorId}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{sponsor.search()}" value="Search" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText  styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}"/>
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
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="natID" value="#{catholic.c.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>

                            <h:form styleClass="form-horizontal form-label-left">
                                <h:outputLabel>Marital Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="marriageNumber" value="#{matrimonial.m.marriageNumber}" title="MarriageNumber" required="true" requiredMessage="The MarriageNumber field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Marriage</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfMarriage" value="#{matrimonial.m.dateOfMarriage}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfMarriage field is required.">
                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="husbandAddress" value="#{matrimonial.m.husbandAddress}" title="Husband Address" required="true" requiredMessage="The HusbandAddress field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="wifeAddress" value="#{matrimonial.m.wifeAddress}" title="Wife Address" required="true" requiredMessage="The HusbandAddress field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Husband</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="condhusband" value="" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Bachelor" itemValue="bachelor" />
                                        <f:selectItem itemLabel="Widower" itemValue="widower" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Wife</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="condwife" value="" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Spinster" itemValue="spinster" />
                                        <f:selectItem itemLabel="Widow" itemValue="widow" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="conshusband" value="" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="conswife" value="" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="marriageny" value="" title="" required="true" requiredMessage="The Ministerid field is required.">
                                    <f:selectItem  itemLabel="Banns" itemValue="Banns" />
                                    <f:selectItem  itemLabel="Intention To Marry" itemValue="Intention To Marry" />
                                    <f:selectItem  itemLabel="Marriage License" itemValue="Marriage License" />
                                </h:selectOneMenu>
                                </div>
                            </div>        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Officer</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{confirmation.ministerId}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Official Designation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="officialDesignation" value="#{matrimonial.m.officialDesignation}" title="OfficialDesignation" required="true" requiredMessage="The OfficialDesignation field is required."/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Solemnized At</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{confirmation.parishId}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                </div>
                            </div>
                                <hr>
                                <h:commandButton action="#{matrimonial.add()}" value="Add Marriage" styleClass="btn btn-success"/>
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
