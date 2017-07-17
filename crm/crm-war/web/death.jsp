<%-- 
    Document   : death
    Created on : Jul 10, 2017, 1:19:59 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Death Records</jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
         <h:form>
               
             <h:commandButton value="Add New Record" action="#{deathRec.newRec()}" styleClass="btn btn-info"/>

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Confirmation Records</h2>
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
                      <h:dataTable value="#{deathRec.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Id"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="SpouseMemberID"/>
                              </f:facet>
                              <h:outputText value="#{item.spouseMemberID}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Dod"/>
                              </f:facet>
                              <h:outputText value="#{item.dod}">
                                  <f:convertDateTime pattern="MM/dd/yyyy" />
                              </h:outputText>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="PlaceOfDeath"/>
                              </f:facet>
                              <h:outputText value="#{item.placeOfDeath}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="DateOfBurial"/>
                              </f:facet>
                              <h:outputText value="#{item.dateOfBurial}">
                                  <f:convertDateTime pattern="MM/dd/yyyy" />
                              </h:outputText>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="PlaceOfBurial"/>
                              </f:facet>
                              <h:outputText value="#{item.placeOfBurial}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="SacramentAdministered"/>
                              </f:facet>
                              <h:outputText value="#{item.sacramentAdministered}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Userid"/>
                              </f:facet>
                              <h:outputText value="#{item.userid}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Memberid"/>
                              </f:facet>
                              <h:outputText value="#{item.memberid}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Parishid"/>
                              </f:facet>
                              <h:outputText value="#{item.parishid}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Ministerid"/>
                              </f:facet>
                              <h:outputText value="#{item.ministerid}"/>
                          </h:column>
                      </h:dataTable>
                  </h:form>

                </h:form>

                  </div>
                </div>
              </div>
            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
