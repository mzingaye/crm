<%-- 
    Document   : baptism
    Created on : Jul 10, 2017, 1:18:38 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Baptism Records</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            
            <table class="table table-striped">
                <tr>
                    <td colspan="3"><h:outputLabel value="Common Actions"/></td>
                </tr>
                <tr> 
                    <td>
                        <h:form  styleClass="form-horizontal form-label-left">
                           <div class="form-group">
                               <div class="col-md-12 col-sm-12 col-xs-12 ">
                                 <div class="input-group">
                                  <h:commandButton value="Add New Record" action="#{baptismActions.newRec()}" styleClass="btn btn-info"/>   
                                 </div>
                               </div>
                           </div>
                       </h:form>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3"><h:outputLabel value="Search Options"/></td>
                </tr>
                
                <tr>
                    <td>
                        <h:form  styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <div class="col-md-12 col-sm-12 col-xs-12 ">
                                  <div class="input-group">
                                      <h:inputText  styleClass="form-control" id="cname" value="#{bBean.cname}"/>
                                    <span class="input-group-btn">
                                    <h:commandButton action="#{baptism.searchCname()}" value="Christian Name" styleClass="btn btn-warning"/>
                                    </span>
                                  </div>
                                </div>
                            </div>
                        </h:form>
                    </td>
                    <td>
                        <h:form  styleClass="form-horizontal form-label-left">
                           <div class="form-group">
                               <div class="col-md-12 col-sm-12 col-xs-12 ">
                                 <div class="input-group">
                                     <h:inputText  styleClass="form-control" id="dateOfBaptism" value="#{bBean.dateOfBaptism}" title="dd/mm/yyyy">
                                            <f:convertDateTime pattern="dd/mm/yyyy" />
                                        </h:inputText>
                                   <span class="input-group-btn">
                                   <h:commandButton action="#{baptism.searchDateOfBaptism()}" value="Date of Baptism" styleClass="btn btn-warning"/>
                                   </span>
                                 </div>
                               </div>
                           </div>
                       </h:form>
                    </td>
                    <td>
                        <h:form  styleClass="form-horizontal form-label-left">
                           <div class="form-group">
                               <div class="col-md-12 col-sm-12 col-xs-12 ">
                                 <div class="input-group">
                                     <h:inputText  styleClass="form-control" id="firstCommunion" value="#{bBean.firstCommunion}" title="dd/mm/yyyy">
                                            <f:convertDateTime pattern="dd/mm/yyyy" />
                                        </h:inputText>
                                   <span class="input-group-btn">
                                   <h:commandButton action="#{baptism.searchFirstCommunion()}" value="Date of Confirmation" styleClass="btn btn-warning"/>
                                   </span>
                                 </div>
                               </div>
                           </div>
                       </h:form>
                    </td>
                </tr>
                
            </table>
                <hr>
         <h:form>
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Baptism Records</h2>
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

                    <h:dataTable value="#{baptism.all}" var="item" styleClass="table table-striped">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="#"/>
                            </f:facet>
                            <h:outputText value="#{item.id}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Christian Name"/>
                            </f:facet>
                            <h:outputText value="#{item.cname}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Date Of Baptism"/>
                            </f:facet>
                            <h:outputText value="#{item.dateOfBaptism}">
                                <f:convertDateTime pattern="MM/dd/yyyy" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="First Communion"/>
                            </f:facet>
                            <h:outputText value="#{item.firstCommunion}">
                                <f:convertDateTime pattern="MM/dd/yyyy" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Baptism Number"/>
                            </f:facet>
                            <h:outputText value="#{item.baptismNumber}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Physical Address"/>
                            </f:facet>
                            <h:outputText value="#{item.physicalAddress}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Flagged Delete"/>
                            </f:facet>
                            <c:if test="${item.deleteFlag eq 1}"><h:outputText value="Deleted"/></c:if>
                            <c:if test="${item.deteleFlag == '1'}"><h:outputText value="Valid"/></c:if>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value=""/>
                            </f:facet>
                            <h:commandLink action="#{baptismActions.view(item)}" value="" styleClass="fa fa-eye"/> |
                            <h:commandLink action="#{baptismActions.delete(item)}" value="" styleClass="fa fa-trash"/> 
                        </h:column>
                        
                    </h:dataTable>
                </h:form>

                  </div>
                </div>
              </div>
            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
