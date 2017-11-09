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
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Death Records</h2>
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
            
                    <table id="datatable" class="table table-striped">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Deceased</th>
                            <th>Date Of Death</th>
                            <th>Place Of Death</th>
                            <th>Date Of Burial</th>
                            <th>Place Of Burial</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{deathRec.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.baptismid.memberid.fname} ${i.baptismid.memberid.lname} [${i.baptismid.memberid.id}]</td>
                                    <td>
                                        <h:outputText value="#{i.dateOfDeath}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>${i.placeOfDeath}</td>
                                    <td>
                                        <h:outputText value="#{i.dateOfBurial}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>${i.placeOfBurial}</td>
                                    <td>
                                        <h:column>
                                            <h:commandLink action="#{deathRec.view(i)}" value=" View" styleClass="fa fa-eye"/> | 
                                            <h:commandLink action="#{deathRec.delete(i)}" value=" Delete" styleClass="fa fa-trash"/>
                                        </h:column>
                                    </td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                      
                    </table>

                </h:form>

                  </div>
                </div>
              </div>
            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
