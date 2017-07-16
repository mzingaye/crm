<%-- 
    Document   : config
    Created on : Jul 10, 2017, 1:21:05 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">System Configurations</jsp:attribute>
    
    <jsp:attribute name="content">
        <f:view>
            <h:form>
            <h:commandLink value="Add New Parish" action="parish" styleClass="btn btn-info"></h:commandLink>
            <h:commandLink value="Add New Minister" action="minister" styleClass="btn btn-primary"></h:commandLink>
            <h:commandLink value="Add New System User" action="users" styleClass="btn btn-success"></h:commandLink>
                <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Parish Records</small></h2>
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
                      <h:dataTable value="#{parish.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Id"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Name"/>
                              </f:facet>
                              <h:outputText value="#{item.name}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="PhysicalAddress"/>
                              </f:facet>
                              <h:outputText value="#{item.physicalAddress}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Contact"/>
                              </f:facet>
                              <h:outputText value="#{item.contact}"/>
                          </h:column>
                          <h:column>
                            <f:facet name="header">
                                <h:outputText value="Actions"/>
                            </f:facet>
                            <h:outputText value="" styleClass="fa fa-eye"/> |
                            <h:outputText value="" styleClass="fa fa-edit"/> |
                            <h:outputText value="" styleClass="fa fa-trash"/> 
                        </h:column>
                      </h:dataTable>
                  </h:form>


                  </div>
                </div>
              </div>
                
                <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Minister Records</small></h2>
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
                      <h:dataTable value="#{minister.all}" var="item" styleClass="table table-stripped">
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Id"/>
                              </f:facet>
                              <h:outputText value="#{item.id}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Fname"/>
                              </f:facet>
                              <h:outputText value="#{item.fname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Lname"/>
                              </f:facet>
                              <h:outputText value="#{item.lname}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Rank"/>
                              </f:facet>
                              <h:outputText value="#{item.rank}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Contact"/>
                              </f:facet>
                              <h:outputText value="#{item.contact}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="NatID"/>
                              </f:facet>
                              <h:outputText value="#{item.natID}"/>
                          </h:column>
                          <h:column>
                              <f:facet name="header">
                                  <h:outputText value="Priestorder"/>
                              </f:facet>
                              <h:outputText value="#{item.priestorder}"/>
                          </h:column>
                          <h:column>
                            <f:facet name="header">
                                <h:outputText value="Actions"/>
                            </f:facet>
                            <h:outputText value="" styleClass="fa fa-eye"/> |
                            <h:outputText value="" styleClass="fa fa-edit"/> |
                            <h:outputText value="" styleClass="fa fa-trash"/> 
                        </h:column>
                      </h:dataTable>
                  </h:form>


                  </div>
                </div>
              </div>
                
               
            </h:form>

            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
