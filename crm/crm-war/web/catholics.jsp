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

                        <table id="datatable" class="table table-striped  ">
                            <thead>
                              <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Middle Name</th>
                                <th>Last Name</th>
                                <th>Sex</th>
                                <th>Date Of Birth</th>
                                <th>Contact</th>
                                <th>Actions</th>
                              </tr>
                            </thead>
                            <tbody >
                                <c:forEach var="i" items="#{catholic.all}" >
                                    <tr >
                                        <td>${i.id}</td>
                                        <td>${i.fname}</td>
                                        <td>${i.mname}</td>
                                        <td>${i.lname}</td>
                                        <td>${i.sex}</td>
                                        <td>
                                            <h:outputText value="#{i.dob}">
                                                <f:convertDateTime pattern="dd/MM/yyyy" />
                                            </h:outputText>
                                        </td>
                                        <td>${i.contact}</td>
                                        <td>
                                            <h:column>
                                                <h:commandLink action="#{catholic.view(i)}" value="View" styleClass="fa fa-eye"/> |
                                                <h:commandLink action="#{sponsor.make(i)}" value="Sponsor" styleClass="fa fa-search-minus"/> |
                                                <h:commandLink action="#{baptism.newBaptism(i)}" value="Baptism" styleClass="fa fa-plus"/> |
                                                <h:commandLink action="#{catholic.delete(i)}" value="Delete" styleClass="fa fa-trash"/> 
                                            </h:column>
                                        </td>
                                    </tr>
                                </c:forEach> 
                            </tbody>

                        </table>
                      </div>
                    </div>
                </div>
            </h:form>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
