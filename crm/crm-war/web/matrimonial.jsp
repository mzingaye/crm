<%-- 
    Document   : matrimonial
    Created on : Jul 10, 2017, 1:19:41 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Matrimonial Records</jsp:attribute>
    
    <jsp:attribute name="content">
       <f:view>
         <h:form>
               
             <h:commandButton value="Add New Record" action="#{matrimonial.newRec()}" styleClass="btn btn-info"/>

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
                      
                      <h:dataTable value="#{matrimonial.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="#"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="MarriageNumber"/>
                              </f:facet>
                              <h:outputText value="#{item.marriageNumber}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="DateOfMarriage"/>
                              </f:facet>
                              <h:outputText value="#{item.dateOfMarriage}">
                                  <f:convertDateTime pattern="MM/dd/yyyy" />
                              </h:outputText>
                          </h:column>
                          
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="WifeMemberID"/>
                              </f:facet>
                              <h:outputText value="#{item.wifeMemberID}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="WifeAddress"/>
                              </f:facet>
                              <h:outputText value="#{item.wifeAddress}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="ConditionOfHusband"/>
                              </f:facet>
                              <h:outputText value="#{item.conditionOfHus}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="ConsentHusband"/>
                              </f:facet>
                              <h:outputText value="#{item.consentHus}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="ConditionOfWife"/>
                              </f:facet>
                              <h:outputText value="#{item.conditionOfWife}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="ConsentWife"/>
                              </f:facet>
                              <h:outputText value="#{item.consentWife}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="MarriageBy"/>
                              </f:facet>
                              <h:outputText value="#{item.marriageBy}"/>
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