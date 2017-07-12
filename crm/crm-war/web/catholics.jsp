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
    <jsp:attribute name="page_title">Dashboard</jsp:attribute>
    
    <jsp:attribute name="content">
        <f:view>
            <h:form>
                <h:dataTable var="c" value="#{catholic.getAll()}">
                    <h:column>
                        <f:facet name="header">Id</f:facet>
                        <h:outputText value="#{c.id}"></h:outputText>
                    </h:column>
                    <h:column>
                        <f:facet name="header">First Name</f:facet>
                        <h:outputText value="#{c.fname}"></h:outputText>
                    </h:column>
                    <h:column>
                        <f:facet name="header">Contact</f:facet>
                        <h:outputText value="#{c.contact}"></h:outputText>
                    </h:column>
                    <h:column>
                        <f:facet name="header">Address</f:facet>
                        <h:outputText value="#{c.age}"></h:outputText>
                    </h:column>
                </h:dataTable>
            </h:form>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
