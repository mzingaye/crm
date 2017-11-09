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
                            <h:outputLabel>Catholic Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.b.memberid.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.b.memberid.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.b.memberid.lname}"/>
                                </div>
                            </div>
                            
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Spouse Information</h:outputLabel>
                            <hr>
                                
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Full Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="spousename" value="#{matrimonial.spousename}"/>
                                </div>
                            </div>
                            
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Husband Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.sh.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.sh.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.sh.lname}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{matrimonial.sh.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Wife Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.sw.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.sw.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.sw.lname}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{matrimonial.sw.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>

                            <h:form styleClass="form-horizontal form-label-left">
                                <h:outputLabel>Marital Information</h:outputLabel>
                            <hr>
                           
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Marriage</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfMarriage" value="#{matrimonial.m.dateOfMarriage}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfMarriage field is required." converterMessage="Please provide date of marriage in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dateOfMarriage" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="husbandAddress" value="#{matrimonial.m.husbandAddress}" title="Husband Address" required="true" requiredMessage="The HusbandAddress field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="husbandAddress" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="wifeAddress" value="#{matrimonial.m.wifeAddress}" title="Wife Address" required="true" requiredMessage="The WifeAddress field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="wifeAddress" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Husband</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="conditionOfHus" value="#{matrimonial.m.conditionOfHus}" title="conditionOfHus" required="true" requiredMessage="The conditionOfHusband field is required.">
                                        <f:selectItem itemLabel="Select Husband Condition" itemValue="" />
                                        <f:selectItem itemLabel="Bachelor" itemValue="bachelor" />
                                        <f:selectItem itemLabel="Widower" itemValue="widower" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                    </h:selectOneMenu>
                                    <h:message for="conditionOfHus" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Wife</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="conditionOfWife" value="#{matrimonial.m.conditionOfWife}" title="conditionOfWife" required="true" requiredMessage="The conditionOfWife field is required.">
                                        <f:selectItem itemLabel="Select Wife Condition" itemValue="" />
                                        <f:selectItem itemLabel="Spinster" itemValue="spinster" />
                                        <f:selectItem itemLabel="Widow" itemValue="widow" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                </h:selectOneMenu>
                                    <h:message for="conditionOfWife" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="consentHus" value="#{matrimonial.m.consentHus}" title="husbandConsent" required="true" requiredMessage="The husbandConsent field is required.">
                                        <f:selectItem itemLabel="Select Husband Consent" itemValue="" />
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                   <h:message for="consentHus" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="consentWife" value="#{matrimonial.m.consentWife}" title="wifeConsent" required="true" requiredMessage="The wifeConsent field is required.">
                                        <f:selectItem itemLabel="Select Wife Consent" itemValue="" />
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                    <h:message for="consentWife" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="marriageBy" value="#{matrimonial.m.marriageBy}" title="marriageBy" required="true" requiredMessage="The marriageBy field is required.">
                                        <f:selectItem itemLabel="Select Marriage By" itemValue="" />
                                        <f:selectItem  itemLabel="Banns" itemValue="Banns" />
                                        <f:selectItem  itemLabel="Intention To Marry" itemValue="Intention To Marry" />
                                        <f:selectItem  itemLabel="Marriage License" itemValue="Marriage License" />
                                    </h:selectOneMenu>
                                    <h:message for="marriageBy" style="color: red"/> 
                                </div>
                            </div>        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Officer</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{matrimonial.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Select Marriage Officer" itemValue="" />
                                        <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                    <h:message for="ministerid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Official Designation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="officialDesignation" value="#{matrimonial.m.officialDesignation}" title="OfficialDesignation" required="true" requiredMessage="The OfficialDesignation field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputText>
                                    <h:message for="officialDesignation" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Solemnized At</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{matrimonial.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <f:selectItem itemLabel="Select Parish" itemValue="" />
                                        <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                    <h:message for="parishid" style="color: red"/>
                                </div>
                            </div>
                                <hr>
                                <h:commandButton action="#{matrimonial.edit()}" value="Update" styleClass="btn btn-success"/>
                                <a href="matrimonial.jsp" value="" class="btn btn-danger">Cancel</a>
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
