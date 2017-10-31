<%-- 
    Document   : reports
    Created on : Oct 30, 2017, 10:58:39 PM
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
    <jsp:attribute name="page_title">Reports</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            
            
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                      <h2>Catholic Reports</h2>
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
                        <h:form  styleClass="form-horizontal form-label-left">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Catholic Record : </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="r_type" value="#{reports.r_type}" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Select Report Type" itemValue="0" />
                                        <f:selectItem itemLabel="Catholics Report" itemValue="catholic" />
                                        <f:selectItem itemLabel="Sponsors Report" itemValue="sponsor" />
                                        <f:selectItem itemLabel="Baptism Report" itemValue="baptism" />
                                        <f:selectItem itemLabel="Confirmation Report" itemValue="confirmation" />
                                        <f:selectItem itemLabel="Matrimonial Report" itemValue="matrimonial" />
                                        <f:selectItem itemLabel="Death Report" itemValue="death" />
                                    </h:selectOneMenu>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Select Period View : </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="r_period" value="#{reports.r_period}" title="" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Select Reporting Year" itemValue="0" />
                                        <f:selectItem itemLabel="1990" itemValue="1990" />
                                        <f:selectItem itemLabel="1991" itemValue="1991" />
                                        <f:selectItem itemLabel="1992" itemValue="1992" />
                                        <f:selectItem itemLabel="1993" itemValue="1993" />
                                        <f:selectItem itemLabel="1994" itemValue="1994" />
                                        <f:selectItem itemLabel="1995" itemValue="1995" />
                                        <f:selectItem itemLabel="1996" itemValue="1996" />
                                        <f:selectItem itemLabel="1997" itemValue="1997" />
                                        <f:selectItem itemLabel="1998" itemValue="1998" />
                                        <f:selectItem itemLabel="1999" itemValue="1999" />
                                        <f:selectItem itemLabel="2000" itemValue="2000" />
                                        <f:selectItem itemLabel="2001" itemValue="2001" />
                                        <f:selectItem itemLabel="2002" itemValue="2002" />
                                        <f:selectItem itemLabel="2003" itemValue="2003" />
                                        <f:selectItem itemLabel="2004" itemValue="2004" />
                                        <f:selectItem itemLabel="2005" itemValue="2005" />
                                        <f:selectItem itemLabel="2006" itemValue="2006" />
                                        <f:selectItem itemLabel="2007" itemValue="2007" />
                                        <f:selectItem itemLabel="2008" itemValue="2008" />
                                        <f:selectItem itemLabel="2009" itemValue="2009" />
                                        <f:selectItem itemLabel="2010" itemValue="2010" />
                                        <f:selectItem itemLabel="2011" itemValue="2011" />
                                        <f:selectItem itemLabel="2012" itemValue="2012" />
                                        <f:selectItem itemLabel="2013" itemValue="2013" />
                                        <f:selectItem itemLabel="2014" itemValue="2014" />
                                        <f:selectItem itemLabel="2015" itemValue="2015" />
                                        <f:selectItem itemLabel="2016" itemValue="2016" />
                                        <f:selectItem itemLabel="2017" itemValue="2017" />
                                        <f:selectItem itemLabel="2018" itemValue="2018" />
                                        <f:selectItem itemLabel="2019" itemValue="2019" />
                                        <f:selectItem itemLabel="2020" itemValue="2020" />
                                        
                                    </h:selectOneMenu>
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{reports.generate()}" value="Generate Report" styleClass="btn btn-info"/>
                        </h:form>
                            <hr>
                            
                            <table id="datatable-buttons" class="table table-striped">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Date</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{reports.rep}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.name}</td>
                                    <td>
                                        <h:outputText value="#{i.date}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>
                                        <h:column>
                                            <h:outputLink onclick="window.open('baptism_report.jsp', 'popupWindowName', 'height=750,width=900,resizable=0', 'dependent=yes, menubar=no, toolbar=no'); return false;" value="#{reports.view(i.id)}">
                                                <h:outputText value="" styleClass="fa fa-eye" title="View Report"/>
                                            </h:outputLink>
                                        </h:column>
                                    </td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                      
                    </table>


                    </div>
                </div>
            </div>
        </f:view>
    </jsp:attribute>
</crm:mainTemplate>
