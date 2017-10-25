<%-- 
    Document   : startTemplate
    Created on : Oct 23, 2017, 7:34:50 PM
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
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><jsp:invoke fragment="title"></jsp:invoke></title>

    <!-- Bootstrap -->
    <link href="resources/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="resources/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="resources/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="./resources/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="./resources/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="./resources/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="./resources/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="./resources/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="resources/build/css/custom.min.css" rel="stylesheet">
    </head>
     
  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <jsp:invoke fragment="content"></jsp:invoke>
          </section>
        </div>

      </div>
    </div>
  </body>

    
    <!--<body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
      <div class="login_wrapper">
          
      </div>
    </div>
     page content 
        <div class="right_col" role="main">
            <div class="">
                
            
        </div>
        </div>
        <!-- /page content -->

        <!-- footer content ->
        <footer>
          <div class="pull-right">
              Lyne Systems Private Limited &copy; 2017
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content 
      </div>-->
    

    <!-- jQuery -->
    <script src="resources/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="resources/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="resources/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="resources/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- jQuery Sparklines -->
    <script src="resources/vendors/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- Flot -->
    <script src="resources/vendors/Flot/jquery.flot.js"></script>
    <script src="resources/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="resources/vendors/Flot/jquery.flot.time.js"></script>
    <script src="resources/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="resources/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="resources/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="resources/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="resources/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="resources/vendors/DateJS/build/date.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="resources/vendors/moment/min/moment.min.js"></script>
    <script src="resources/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    
    <!-- Datatables -->
    <script src="./resources/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="./resources/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="./resources/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="./resources/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="./resources/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="./resources/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="./resources/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="./resources/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="./resources/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="./resources/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="./resources/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="./resources/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="./resources/vendors/jszip/dist/jszip.min.js"></script>
    <script src="./resources/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="./resources/vendors/pdfmake/build/vfs_fonts.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="resources/build/js/custom.min.js"></script>
  </body>
</html>
