<%-- 
    Document   : createdeathrec
    Created on : Jul 14, 2017, 1:23:08 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Death Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Deceased Details </h2>
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

                        <h:form>
                            <h:panelGrid columns="2" styleClass="form-group">
                                <h:outputLabel value="Id:" for="id" styleClass="control-label col-md-3 col-sm-3 col-xs-12"/>
                                <h:inputText id="id" value="#{deathRec.d.id}" title="Id" required="true" requiredMessage="The Id field is required." styleClass="form-control has-feedback-left col-md-6 col-sm-6 col-xs-12"/>
                                <h:outputLabel value="SpouseMemberID:" for="spouseMemberID" />
                                <h:inputText id="spouseMemberID" value="#{deathRec.d.spouseMemberID}" title="SpouseMemberID" />
                                <h:outputLabel value="Dod:" for="dod" />
                                <h:inputText id="dod" value="#{deathRec.d.dod}" title="Dod" required="true" requiredMessage="The Dod field is required.">
                                    <f:convertDateTime pattern="MM/dd/yyyy" />
                                </h:inputText>
                                <h:outputLabel value="PlaceOfDeath:" for="placeOfDeath" />
                                <h:inputText id="placeOfDeath" value="#{deathRec.d.placeOfDeath}" title="PlaceOfDeath" required="true" requiredMessage="The PlaceOfDeath field is required."/>
                                <h:outputLabel value="DateOfBurial:" for="dateOfBurial" />
                                <h:inputText id="dateOfBurial" value="#{deathRec.d.dateOfBurial}" title="DateOfBurial" required="true" requiredMessage="The DateOfBurial field is required.">
                                    <f:convertDateTime pattern="MM/dd/yyyy" />
                                </h:inputText>
                                <h:outputLabel value="PlaceOfBurial:" for="placeOfBurial" />
                                <h:inputText id="placeOfBurial" value="#{deathRec.d.placeOfBurial}" title="PlaceOfBurial" required="true" requiredMessage="The PlaceOfBurial field is required."/>
                                <h:outputLabel value="SacramentAdministered:" for="sacramentAdministered" />
                                <h:inputText id="sacramentAdministered" value="#{deathRec.d.sacramentAdministered}" title="SacramentAdministered" />
                                <h:outputLabel value="Userid:" for="userid" />
                                <h:selectOneMenu id="userid" value="#{deathRec.d.userid}" title="Userid" required="true" requiredMessage="The Userid field is required.">
                                    <!-- TODO: update below reference to list of available items-->
                                    <f:selectItems value="#{fixme}"/>
                                </h:selectOneMenu>
                                <h:outputLabel value="Memberid:" for="memberid" />
                                <h:selectOneMenu id="memberid" value="#{deathRec.d.memberid}" title="Memberid" required="true" requiredMessage="The Memberid field is required.">
                                    <!-- TODO: update below reference to list of available items-->
                                    <f:selectItems value="#{fixme}"/>
                                </h:selectOneMenu>
                                <h:outputLabel value="Parishid:" for="parishid" />
                                <h:selectOneMenu id="parishid" value="#{deathRec.d.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                    <!-- TODO: update below reference to list of available items-->
                                    <f:selectItems value="#{fixme}"/>
                                </h:selectOneMenu>
                                <h:outputLabel value="Ministerid:" for="ministerid" />
                                <h:selectOneMenu id="ministerid" value="#{deathRec.d.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
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
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
