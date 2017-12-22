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
    <jsp:attribute name="page_title">Catholic Members </jsp:attribute>
    
    <jsp:attribute name="content">
        <f:view>
            <h:form>
                <h:commandButton value="Add New Record" action="#{catholic.newMember()}" styleClass="btn btn-info"/>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Member Records</h2>
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
                          <div class="form-group">
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback-left"  value="#{page.rows}" onchange="submit()">
                                        <f:selectItem itemLabel="5" itemValue="5" />
                                        <f:selectItem itemLabel="10" itemValue="10" />
                                        <f:selectItem itemLabel="25" itemValue="25" />
                                        <f:selectItem itemLabel="50" itemValue="50" />
                                        <f:selectItem itemLabel="100" itemValue="100" />
                                        <f:selectItem itemLabel="150" itemValue="150" />
                                        <f:selectItem itemLabel="200" itemValue="200" />
                                        <f:selectItem itemLabel="250" itemValue="250" />
                                        <f:selectItem itemLabel="300" itemValue="300" />
                                        <f:selectItem itemLabel="350" itemValue="350" />
                                        <f:selectItem itemLabel="400" itemValue="400" />
                                    </h:selectOneMenu>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:outputText value=""/>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:outputText value=""/>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <c:if test="${catholic.count == 0}">
                                        <h:outputText value="Showing #{page.rows} max entries of #{catholic.count()} records"/>
                                    </c:if>
                                    <c:if test="${catholic.count != 0}">
                                        <h:outputText value="Showing #{page.rows} max entries of #{catholic.count} records"/>
                                    </c:if>
                                    
                                </div>
                            </div>
                    </h:form>
                    <h:form>
                        <h:dataTable value="#{catholic.getValue()}" var="item" rows="#{page.rows}" styleClass="table table-striped">
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="#"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="id" value="#{catholic.c.id}" >
                                            <f:validateLength maximum="6" />
                                        </h:inputText>
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                <h:outputText value="#{item.id}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="First Name"/>
                                </f:facet>
                                <f:facet name="footer">
                                   <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{catholic.c.fname}" /> 
                                </f:facet>
                                <h:outputText value="#{item.fname}"/>
                            </h:column>
                           
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Last Name"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{catholic.c.lname}" /> 
                                </f:facet>
                                <h:outputText value="#{item.lname}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Sex"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:inputText styleClass="form-control has-feedback-left" id="sex" value="#{catholic.c.sex}" /> 
                                </f:facet>
                                <h:outputText value="#{item.sex}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Date Of Birth"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dob" value="#{catholic.c.dob}" /> 
                                </f:facet>
                                <h:outputText value="#{item.dob}">
                                    <f:convertDateTime pattern="dd/MM/yyyy" />
                                </h:outputText>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Contact"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:inputText styleClass="form-control has-feedback-left" id="contact" value="#{catholic.c.contact}" /> 
                                   
                                </f:facet>
                                <h:outputText value="#{item.contact}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Actions"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:column>  
                                        <h:commandLink value="Search" action="#{catholic.search()}" /> | 
                                        <h:commandLink value="Clear" action="#{catholic.clear()}" /> 
                                    </h:column>
                                    
                                </f:facet>
                                   <h:commandLink action="#{catholic.view(item)}" value="View" styleClass="fa fa-eye"/> |
                                   <h:commandLink action="#{baptism.newBaptism(item)}" value="Baptism" styleClass="fa fa-plus"/> |
                                   <h:commandLink action="#{misc.newMisc(item)}" value="Misc" styleClass="fa fa-plus"/> |
                                   <h:commandLink action="#{catholic.delete(item)}" value="Delete" styleClass="fa fa-trash"/> 
                               </h:column>
                               
                        </h:dataTable>
                      </div>
                    </div>
                </div>
            </h:form>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
