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
            <h:form>
                <h:commandLink value="New Baptism" action="createcatholic" styleClass="btn btn-success"></h:commandLink>


                <h:form>
                    <h1><h:outputText value="List"/></h1>
                    <h:dataTable value="#{baptism.all}" var="item">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Id"/>
                            </f:facet>
                            <h:outputText value="#{item.id}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Cname"/>
                            </f:facet>
                            <h:outputText value="#{item.cname}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="DateOfBaptism"/>
                            </f:facet>
                            <h:outputText value="#{item.dateOfBaptism}">
                                <f:convertDateTime pattern="MM/dd/yyyy" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="FirstCommunion"/>
                            </f:facet>
                            <h:outputText value="#{item.firstCommunion}">
                                <f:convertDateTime pattern="MM/dd/yyyy" />
                            </h:outputText>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="BaptismNumber"/>
                            </f:facet>
                            <h:outputText value="#{item.baptismNumber}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="PhysicalAddress"/>
                            </f:facet>
                            <h:outputText value="#{item.physicalAddress}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Userid"/>
                            </f:facet>
                            <h:outputText value="#{item.userid}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Memberid"/>
                            </f:facet>
                            <h:outputText value="#{item.memberid}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Parishid"/>
                            </f:facet>
                            <h:outputText value="#{item.parishid}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Ministerid"/>
                            </f:facet>
                            <h:outputText value="#{item.ministerid}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="Sponsorid"/>
                            </f:facet>
                            <h:outputText value="#{item.sponsorid}"/>
                        </h:column>
                    </h:dataTable>
                </h:form>

                
            </h:form>
            
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
