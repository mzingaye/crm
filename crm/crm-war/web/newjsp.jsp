<%-- 
    Document   : newjsp
    Created on : Nov 1, 2017, 12:03:12 AM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878">
            <div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
                   <span style="font-size:50px; font-weight:bold">Baptism Certificate</span>
                   <br><br>
                   <span style="font-size:25px"><i>This is to certify that</i></span>
                   <br><br>
                   <span style="font-size:30px"><b>$username</b></span><br/><br/>
                   <span style="font-size:25px"><i>has completed the course</i></span> <br/><br/>
                   <span style="font-size:30px">$course.getName()</span> <br/><br/>
                   <span style="font-size:20px">with score of <b>$grade.getPoints()%</b></span> <br/><br/><br/><br/>
                   <span style="font-size:25px"><i>dated</i></span><br>
                  #set ($dt = $DateFormatter.getFormattedDate($grade.getAwardDate(), "MMMM dd, yyyy"))
                  <span style="font-size:30px">$dt</span>
            </div>
        </div>
    </body>
</html>
