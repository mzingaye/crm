<%-- 
    Document   : baptism_report
    Created on : Oct 31, 2017, 11:24:04 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:plainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Reports</jsp:attribute>
   
    <jsp:attribute name="content">
        <f:view>
            <div style="width:800px; height:1150px; padding:20px;  border: 10px solid #787878;">
                <div style="width:750px; height:1100px; padding:20px; text-align:center; border: 5px solid #787878">
                    <table class="table table-striped" >
                        <tr>
                            <td colspan="2"><br><span style="font-size:50px; font-weight:bold">Baptism Certificate</span><br></td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Parish/Mission </span> </td>
                            <td><span style="font-size:15px">${bBean.parishid.name}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Baptism Reg. No.</span> </td>
                            <td><span style="font-size:15px">${bBean.baptReg}</span></td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Christian Name</span> </td>
                            <td><span style="font-size:15px">${bBean.cname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">First Name</span> </td>
                            <td><span style="font-size:15px">${bBean.memberid.fname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Surname</span> </td>
                            <td><span style="font-size:15px">${bBean.memberid.lname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Date of Birth</span> </td>
                            <td>
                                <span style="font-size:15px">
                                    <h:outputText value="#{bBean.memberid.dob}">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                    </h:outputText>
                                </span> 
                            </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Date of Baptism</span> </td>
                            <td>
                                <span style="font-size:15px">
                                    <h:outputText value="#{bBean.dateOfBaptism}">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                    </h:outputText>
                                </span> 
                            </td>
                        </tr><tr>
                            <td><span style="font-size:15px">Sponsor</span> </td>
                            <td><span style="font-size:15px">${bBean.sponsorid.fname} ${bBean.sponsorid.lname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Father's Name</span> </td>
                            <td><span style="font-size:15px">${bBean.memberid.ffname} ${bBean.memberid.flname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Mother's Name</span> </td>
                            <td><span style="font-size:15px">${bBean.memberid.mfname} ${bBean.memberid.mlname}</span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Baptized by</span> </td>
                            <td><span style="font-size:15px">${bBean.ministerid.rank} ${bBean.ministerid.fname} ${bBean.ministerid.lname}</span> </td>
                        </tr>
                        <c:forEach var="c" items="#{bBean.confirmationList}">
                            <tr>
                                <td><span style="font-size:15px">Confirmed at</span> </td>
                                <td><span style="font-size:15px">${c.parishid.name}</span> </td>
                            </tr><tr>
                                <td><span style="font-size:15px">Date of Confirmation</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                        <h:outputText value="#{c.dateOfConfirmation}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </span> 
                                </td>
                            </tr>
                        </c:forEach>
                        <c:forEach var="m" items="#{bBean.matrimonialList}">
                            <tr>
                                <td><span style="font-size:15px">Married to</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                        ${m.baptismid.memberid.fname} ${m.baptismid.memberid.lname}
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size:15px">Date of Marriage</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                        <h:outputText value="#{m.dateOfMarriage}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size:15px">Registered at</span> </td>
                                <td><span style="font-size:15px">${m.parishid.name}</span> </td>
                            </tr><tr>
                                <td><span style="font-size:15px">Marriage Reg. No.</span> </td>
                                <td><span style="font-size:15px">${m.id}</span> </td>
                            </tr>
                        </c:forEach>
                            <c:forEach var="m" items="#{bBean.matrimonialList1}">
                            <tr>
                                <td><span style="font-size:15px">Married to</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                       ${m.spouse} 
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size:15px">Date of Marriage</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                        <h:outputText value="#{m.dateOfMarriage}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </span> 
                                </td>
                            </tr>
                            <tr>
                                <td><span style="font-size:15px">Registered at</span> </td>
                                <td><span style="font-size:15px">${m.parishid.name}</span> </td>
                            </tr><tr>
                                <td><span style="font-size:15px">Marriage Reg. No.</span> </td>
                                <td><span style="font-size:15px">${m.id}</span> </td>
                            </tr>
                        </c:forEach>
                        <c:forEach var="d" items="#{bBean.deathList}">
                            <tr>
                                <td><span style="font-size:15px">Died at</span> </td>
                                <td><span style="font-size:15px">${d.placeOfDeath}</span> </td>
                            </tr>
                            <tr>
                                <td><span style="font-size:15px">Date of Death</span> </td>
                                <td>
                                    <span style="font-size:15px">
                                        <h:outputText value="#{d.dateOfDeath}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </span> 
                                </td>
                            </tr>
                        </c:forEach>
                        <tr>
                            <td colspan="2"><span style="font-size:12px"><i>I herewith certify that the above is a true extract from the Baptism Register.</i></span> </td>
                        </tr>
                        <tr>
                            <td><span style="font-size:15px">Signed</span> </td>
                            <td><span style="font-size:15px"></span> </td>
                        </tr><tr>
                            <td><span style="font-size:15px">Place and Date</span> </td>
                            <td><span style="font-size:15px"></span> </td>
                        </tr>
                    </table>
                </div>
            </div>
            <button class="btn btn-dark" onclick="window.print()">Print Report</button>
        </f:view>
    </jsp:attribute>
</crm:plainTemplate>
