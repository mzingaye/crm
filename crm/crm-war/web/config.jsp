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
            <h:commandLink value="New Minister" action="minister"></h:commandLink>


            <h:form>
                <h1><h:outputText value="List"/></h1>
                <h:dataTable value="#{minister.getAll()}" var="item">
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
                            <h:outputText value="Order"/>
                        </f:facet>
                        <h:outputText value="#{item.order}"/>
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
                </h:dataTable>
            </h:form>

            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
