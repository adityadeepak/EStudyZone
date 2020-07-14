<%-- 
    Document   : userhome
    Created on : 24 Jul, 2017, 5:59:59 PM
    Author     : Aditya raj
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <link href="admincss/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-image:url('../images/bulb.jpg');"> 
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
        if (session.getAttribute("adminid") == "" || session.getAttribute("adminid") == null)
            response.sendRedirect("../login.jsp");

        else {
        %>
       
        <form>

            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="../images/logo.png" width="150" height="150"/>
                    </div>
                    <div id="sitetitle">
                        E-Study zone 
                    </div>
                </div>
                
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li title="Feedback Management"><a href="feedbackmanagement.jsp">Feedback Mgmt</a></li>
                      <li title="Complian Management"><a href="complainmanagement.jsp">Complain Mgmt</a></li>
                      <li title="Uploadmaterial"><a href="uploadmaterial.jsp">Uploadmaterial</a></li>
                       <li title="Enquiry Management"><a href="enquirymanagement.jsp">Enquiry Mgmt</a></li>
                    <li><a href="changepassword.jsp">Change password</a></li>
                     <li><a href="logout.jsp">Logout</a></li>
                </ul>	
            </div>
                  
                <div id="contain2" style="background-image:url('images/contain2.jpg');"></div>
                <div id="footer">
                    <div class="subfooter">
                        Copyright &copy; to E-Study Zone
                    </div>
                    <div class="subfooter">
                        Devloped By:Aditya Raj
                    </div>
                </div>

            </div>
        </form>
    </body>
</html>
<%
    }
%>
