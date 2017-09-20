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
                  

                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Date Of Confirmation</th>
                            <th>Baptized By</th>
                            <th>Catholic Member</th>
                            <th>Parish</th>
                            <th>Sponsor</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{confirmation.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>
                                        <h:outputText value="#{i.dateOfConfirmation}">
                                            <f:convertDateTime pattern="MM/dd/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>${i.baptizedBy}</td>
                                    <td><h:outputText value="#{i.memberid.fname} #{i.memberid.lname}"/></td>
                                    <td><h:outputText value="#{i.parishid.name}"/></td>
                                    <td><h:outputText value="#{i.sponsorid.fname} #{i.sponsorid.lname}"/></td>
                                    <td>
                                        <h:column>
                                            <h:outputText value="" styleClass="fa fa-eye" title="View"/> |
                                            <h:outputText value="" styleClass="fa fa-edit" title="Edit"/> |
                                            <h:outputText value="" styleClass="fa fa-trash" title="Delete"/> 
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
