<%-- 
    Document   : catholics
    Created on : Jul 12, 2017, 10:51:13 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Catholic Membership </jsp:attribute>
    
    <jsp:attribute name="content">
        <f:view>
         <h:form>
               
                <h:commandLink value="Add New Record" action="createcatholic" styleClass="btn btn-info"></h:commandLink>

            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Catholic Records</h2>
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

                  <h:dataTable value="#{catholic.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="#"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="First Name"/>
                              </f:facet>
                              <h:outputText value="#{item.fname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Middle Name"/>
                              </f:facet>
                              <h:outputText value="#{item.mname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Last Nname"/>
                              </f:facet>
                              <h:outputText value="#{item.lname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Sex"/>
                              </f:facet>
                              <h:outputText value="#{item.sex}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Date Of Birth"/>
                              </f:facet>
                              <h:outputText value="#{item.dob}">
                                  <f:convertDateTime pattern="MM/dd/yyyy" />
                              </h:outputText>
                          </h:column>
                          
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Contact"/>
                              </f:facet>
                              <h:outputText value="#{item.contact}"/>
                          </h:column>
                        <h:column>
                            <h:outputText value="" styleClass="fa fa-eye" title="View"/> |
                            <h:outputText value="" styleClass="fa fa-edit" title="Edit"/> |
                            <h:outputText value="" styleClass="fa fa-trash" title="Delete"/> 
                        </h:column>
                          
                      </h:dataTable>
                  </h:form>

                  </div>
                </div>
              </div>
            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
