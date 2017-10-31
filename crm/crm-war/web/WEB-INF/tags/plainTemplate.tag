<%-- 
    Document   : plainTemplate
    Created on : Nov 1, 2017, 12:12:23 AM
    Author     : Lyne
--%>

<%@tag description="Catholic Records Management" pageEncoding="UTF-8" %>
<%@attribute name="title" required="true" fragment="true"  %>
<%@attribute name="page_title" required="true" fragment="true"  %>
<%@attribute name="content" required="true" fragment="true" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>
            <jsp:invoke fragment="title"></jsp:invoke>
        </title>
    </head>
    <body onload="window.resizeTo(900,750)">
        <div>
            <jsp:invoke fragment="content"></jsp:invoke>
        </div>
        
    </body>
</html>