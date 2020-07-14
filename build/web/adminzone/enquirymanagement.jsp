
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
        <style>
            table{
                background-color: #ff3300;
                cellspan:10;
            }
        </style>
    </head>
    <body style="background-image:url('../images/bulb.jpg');"> <%
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
                <div id="contain1" >
                    
                    <div id="name">
                       
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
                  
                <div id="contain2" style="background-image:url('images/contain2.jpg');">
                    <center>
                        <h2 style="color: navy;font-weight: bold"> Enquiry Management</h2><br><br>
                        <table border="8" style="width: 900px;color: white;">
                            <tr>
                                <th>S.no</th>
                                 <th>Name</th>
                                  <th>Contact No</th>
                                   <th>Email Address</th>
                                    <th>Enquiry</th>
                                    <th>Enquiry Date</th>
                                    <th>Delete</th>
                            </tr>
                            <%
                            int n=1;
                            DatabaseManager db=new DatabaseManager();
                            String q="select * from enquiry";
                             ResultSet rs=db.selectQuery(q);
                            while(rs.next())
                            {
                            %>
                            
                            <tr>
                                <td><%=n%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><%=rs.getString(5)%></td>
                                <td><%=rs.getString(6)%></td>
                                <td><a href="admincode/delfeedback.jsp?fid=<%=rs.getInt(1) %>">Delete</a></td>
                            </tr>  
                            
                          
                            
                            <%
                            n++;
                            }   
                             %>
                        </table>
                    </center>
                </div>
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
