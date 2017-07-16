<%-- 
    Document   : creatematrimonialrec
    Created on : Jul 14, 2017, 1:23:38 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Matrimonial Record</jsp:attribute>
   
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


                            <h:form>
                                <h1><h:outputText value="Create/Edit"/></h1>
                                <h:panelGrid columns="2">
                                    <h:outputLabel value="Id:" for="id" />
                                    <h:inputText id="id" value="#{matrimonial.m.id}" title="Id" required="true" requiredMessage="The Id field is required."/>
                                    <h:outputLabel value="MarriageNumber:" for="marriageNumber" />
                                    <h:inputText id="marriageNumber" value="#{matrimonial.m.marriageNumber}" title="MarriageNumber" required="true" requiredMessage="The MarriageNumber field is required."/>
                                    <h:outputLabel value="DateOfMarriage:" for="dateOfMarriage" />
                                    <h:inputText id="dateOfMarriage" value="#{matrimonial.m.dateOfMarriage}" title="DateOfMarriage" required="true" requiredMessage="The DateOfMarriage field is required.">
                                        <f:convertDateTime pattern="MM/dd/yyyy" />
                                    </h:inputText>
                                    <h:outputLabel value="HusbandMemberID:" for="husbandMemberID" />
                                    <h:inputText id="husbandMemberID" value="#{matrimonial.m.husbandMemberID}" title="HusbandMemberID" required="true" requiredMessage="The HusbandMemberID field is required."/>
                                    <h:outputLabel value="HusbandAddress:" for="husbandAddress" />
                                    <h:inputText id="husbandAddress" value="#{matrimonial.m.husbandAddress}" title="HusbandAddress" required="true" requiredMessage="The HusbandAddress field is required."/>
                                    <h:outputLabel value="WifeMemberID:" for="wifeMemberID" />
                                    <h:inputText id="wifeMemberID" value="#{matrimonial.m.wifeMemberID}" title="WifeMemberID" required="true" requiredMessage="The WifeMemberID field is required."/>
                                    <h:outputLabel value="WifeAddress:" for="wifeAddress" />
                                    <h:inputText id="wifeAddress" value="#{matrimonial.m.wifeAddress}" title="WifeAddress" required="true" requiredMessage="The WifeAddress field is required."/>
                                    <h:outputLabel value="ConditionOfParties:" for="conditionOfParties" />
                                    <h:inputText id="conditionOfParties" value="#{matrimonial.m.conditionOfParties}" title="ConditionOfParties" required="true" requiredMessage="The ConditionOfParties field is required."/>
                                    <h:outputLabel value="ConscentByWhomGiven:" for="conscentByWhomGiven" />
                                    <h:inputText id="conscentByWhomGiven" value="#{matrimonial.m.conscentByWhomGiven}" title="ConscentByWhomGiven" required="true" requiredMessage="The ConscentByWhomGiven field is required."/>
                                    <h:outputLabel value="Banns:" for="banns" />
                                    <h:inputText id="banns" value="#{matrimonial.m.banns}" title="Banns" required="true" requiredMessage="The Banns field is required."/>
                                    <h:outputLabel value="IntentionToMarry:" for="intentionToMarry" />
                                    <h:inputText id="intentionToMarry" value="#{matrimonial.m.intentionToMarry}" title="IntentionToMarry" required="true" requiredMessage="The IntentionToMarry field is required."/>
                                    <h:outputLabel value="MarriageLicence:" for="marriageLicence" />
                                    <h:inputText id="marriageLicence" value="#{matrimonial.m.marriageLicence}" title="MarriageLicence" required="true" requiredMessage="The MarriageLicence field is required."/>
                                    <h:outputLabel value="HusbandSponsorID:" for="husbandSponsorID" />
                                    <h:inputText id="husbandSponsorID" value="#{matrimonial.m.husbandSponsorID}" title="HusbandSponsorID" required="true" requiredMessage="The HusbandSponsorID field is required."/>
                                    <h:outputLabel value="WifeSponsorID:" for="wifeSponsorID" />
                                    <h:inputText id="wifeSponsorID" value="#{matrimonial.m.wifeSponsorID}" title="WifeSponsorID" required="true" requiredMessage="The WifeSponsorID field is required."/>
                                    <h:outputLabel value="OfficialDesignation:" for="officialDesignation" />
                                    <h:inputText id="officialDesignation" value="#{matrimonial.m.officialDesignation}" title="OfficialDesignation" required="true" requiredMessage="The OfficialDesignation field is required."/>
                                    <h:outputLabel value="Userid:" for="userid" />
                                    <h:selectOneMenu id="userid" value="#{matrimonial.m.userid}" title="Userid" required="true" requiredMessage="The Userid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Parishid:" for="parishid" />
                                    <h:selectOneMenu id="parishid" value="#{matrimonial.m.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                    <h:outputLabel value="Ministerid:" for="ministerid" />
                                    <h:selectOneMenu id="ministerid" value="#{matrimonial.m.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <!-- TODO: update below reference to list of available items-->
                                        <f:selectItems value="#{fixme}"/>
                                    </h:selectOneMenu>
                                </h:panelGrid>
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