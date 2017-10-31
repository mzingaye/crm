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
            <div style="width:800px; height:1050px; padding:20px;  border: 10px solid #787878">
                <div style="width:750px; height:1000px; padding:20px; text-align:center; border: 5px solid #787878">
                       <span style="font-size:50px; font-weight:bold">Baptism Certificate</span>
                       <br><br>
                       <p><span style="font-size:20px">Parish/Mission _____________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Baptism Reg. No.____________ ${bBean.baptismNumber}</span></p>
                       <p><span style="font-size:20px">Christian Name _____________ ${bBean.cname}</span></p>
                       <p><span style="font-size:20px">First Name _________________ ${bBean.memberid.fname}</span></p> 
                       <p><span style="font-size:20px">Surname ____________________ ${bBean.memberid.lname}</span></p>
                       <p><span style="font-size:20px">Date of Birth ______________ ${bBean.memberid.dob}</span></p>
                       <p><span style="font-size:20px">Date of Baptism ___________ ${bBean.dateOfBaptism}</span></p>
                       <p><span style="font-size:20px">Sponsor ____________ ${bBean.sponsorid.fname} ${bBean.sponsorid.lname}</span></p>
                       <p><span style="font-size:20px">Father's Name _____________ ${bBean.memberid.ffname} ${bBean.memberid.flname}</span></p>
                       <p><span style="font-size:20px">Mother's Name _________________ ${bBean.memberid.mfname} ${bBean.memberid.mlname}</span></p> 
                       <p><span style="font-size:20px">Baptized by ____________________ ${bBean.ministerid}</span></p>
                       <p><span style="font-size:20px">Confirmed at ______________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Date _____________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Married to _________________ ${bBean.parishid}</span></p> 
                       <p><span style="font-size:20px">Date ____________________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Registered at ______________ ${bBean.parishid}</span></p>
                        <p><span style="font-size:20px">No. _____________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Died at ____________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px">Date _______________ ${bBean.parishid}</span></p>
                       <p><span style="font-size:20px"><i>I herewith certify that the above is a true extract <br/>from the Baptism Register.</i></span></p> 
                       <p><span style="font-size:20px">Signed  ____________________</span></p>
                       <p><span style="font-size:20px">Place and Date ______________</span></p>
                </div>
            </div>
        </f:view>
    </jsp:attribute>
</crm:plainTemplate>
