<%-- 
    Document   : logs
    Created on : Jul 10, 2017, 1:20:37 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">System Logs</jsp:attribute>
  
    <jsp:attribute name="content">
        <f:view>
            <h:form>
                <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>System Logs</h2>
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
                    <table id="datatable-buttons" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>Logs</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{userlogs.findAll()}" >
                                <tr >
                                    <td>${i}</td> 
                                </tr>
                            </c:forEach> 
                        </tbody>
                    </table>
                  </div>
                </div>
              </div>
                <hr>
                
            </h:form>

        </f:view>
    </jsp:attribute>
</t:mainTemplate>
