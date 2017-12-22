<%-- 
    Document   : baptism
    Created on : Jul 10, 2017, 1:18:38 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Baptism Records</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            
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
                                <c:if test="${baptism.count == 0}">
                                    <h:outputText value="Showing #{page.rows} max entries of #{baptism.count()} records"/>
                                </c:if>
                                <c:if test="${baptism.count != 0}">
                                    <h:outputText value="Showing #{page.rows} max entries of #{baptism.count} records"/>
                                </c:if>

                            </div>
                        </div>
                    </h:form>
                    <h:form>
                        <h:dataTable value="#{baptism.getValue()}" var="item" rows="#{page.rows}" styleClass="table table-striped">
                              <h:column>
                                  <f:facet name="header">
                                      <h:outputText value="#"/>
                                  </f:facet>
                                  <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="id" value="#{baptism.b.id}" >
                                            <f:validateLength maximum="6" />
                                        </h:inputText>
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                  <h:outputText value="#{item.id}"/>
                              </h:column>
                              <h:column>
                                  <f:facet name="header">
                                      <h:outputText value="Christian Name"/>
                                  </f:facet>
                                  <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="cname" value="#{baptism.b.cname}" />
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                  <h:outputText value="#{item.cname}"/>
                              </h:column>
                              <h:column>
                                  <f:facet name="header">
                                      <h:outputText value="Baptism Reg."/>
                                  </f:facet>
                                 <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="baptReg" value="#{baptism.b.baptReg}" />
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                  <h:outputText value="#{item.baptReg}"/>
                              </h:column>
                              <h:column>
                                  <f:facet name="header">
                                      <h:outputText value="Date Of Baptism"/>
                                  </f:facet>
                                  <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="dateOfBaptism" value="#{baptism.b.dateOfBaptism}" />
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                  <h:outputText value="#{item.dateOfBaptism}">
                                      <f:convertDateTime pattern="dd/MM/yyyy" />
                                  </h:outputText>
                              </h:column>
                              <h:column>
                                  <f:facet name="header">
                                      <h:outputText value="Physical Address"/>
                                  </f:facet>
                                  <f:facet name="footer">
                                    <h:column>
                                        <h:inputText styleClass="form-control has-feedback-left" id="physicalAddress" value="#{baptism.b.physicalAddress}" />
                                        <h:message for="id" style="color: red"/>
                                    </h:column>
                                </f:facet>
                                  <h:outputText value="#{item.physicalAddress}"/>
                              </h:column>
                              <h:column>
                                <f:facet name="header">
                                    <h:outputText value="Actions"/>
                                </f:facet>
                                <f:facet name="footer">
                                    <h:column>  
                                        <h:commandLink value="Search" action="#{baptism.search()}" /> | 
                                        <h:commandLink value="Clear" action="#{baptism.clear()}" /> 
                                    </h:column>
                                    
                                </f:facet>
                                    <h:commandLink action="#{baptism.view(item)}" value=" View" styleClass="fa fa-eye"/> |
                                    <h:commandLink action="#{confirmation.newCon(item)}" value=" Confirmation" styleClass="fa fa-plus"/> |
                                    <h:commandLink action="#{matrimonial.newRec(item)}" value=" Matrimonial" styleClass="fa fa-plus"/> |
                                    <h:commandLink action="#{deathRec.newRec(item)}" value=" DeathRec" styleClass="fa fa-plus"/> |
                                    <h:commandLink action="#{baptism.delete(item)}" value=" Delete" styleClass="fa fa-trash"/>
                                </h:column>
                          </h:dataTable>
                      
                    <%--table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Christian Name</th>
                            <th>Full Name</th>
                            <th>Baptism Reg.</th>
                            <th>Date Of Baptism</th>
                            <th>First Communion</th>
                            <th>Physical Address</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{baptism.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.cname}</td>
                                    <td>${i.memberid.fname} ${i.memberid.lname}</td>
                                    <td>${i.baptReg}</td>
                                    <td>
                                        <h:outputText value="#{i.dateOfBaptism}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>
                                        <h:outputText value="#{i.firstCommunion}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>${i.physicalAddress}</td>
                                    <td>
                                       
                                    </td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                      
                    </table--%>
                </h:form>

                  </div>
                </div>
              </div>
            
        </f:view>
    </jsp:attribute>
</crm:mainTemplate>
