<%-- 
    Document   : confirmation
    Created on : Jul 10, 2017, 1:19:10 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Confirmation Records</jsp:attribute>
    
    <jsp:attribute name="content">
         <f:view>
         <h:form>
               
             <h:commandButton value="Add New Record" action="#{confirmation.newCon()}" styleClass="btn btn-info"/>

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
                      <h:dataTable value="#{confirmation.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="#"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="DateOfConfirmation"/>
                              </f:facet>
                              <h:outputText value="#{item.dateOfConfirmation}">
                                  <f:convertDateTime pattern="MM/dd/yyyy" />
                              </h:outputText>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="BaptizedBy"/>
                              </f:facet>
                              <h:outputText value="#{item.baptizedBy}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Member"/>
                              </f:facet>
                              <h:outputText value="#{item.memberid.fname} #{item.memberid.lname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Parish"/>
                              </f:facet>
                              <h:outputText value="#{item.parishid.name}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Sponsor"/>
                              </f:facet>
                              <h:outputText value="#{item.sponsorid.fname} #{item.sponsorid.lname}"/>
                          </h:column>
                          <h:column>
                            <f:facet name="header">
                                <h:outputText value=""/>
                            </f:facet>
                              <h:commandButton  action="#{confirmation.view(item)}" value="view" styleClass="fa-eye"/>|
                            <h:outputText value="" styleClass="fa fa-trash"/> 
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
