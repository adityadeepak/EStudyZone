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
        <title>User Zone</title>
        <link href="admincss/adminstyle.css" rel="stylesheet"/>
      
    </head>
    <body style="background-image:url('../images/banner8.jpg');"> 
        <%
        if (session.getAttribute("adminid") == "" || session.getAttribute("adminid") == null)
            response.sendRedirect("../login.jsp");

        else {
        %>
        <form action="../uploadcode" method="post" enctype="multipart/form-data"> 

            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="images/logo.png" width="150" height="150"/>
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
                       <li title="Enquiry Management"><a href="eenquirymanagement.jsp">Enquiry Mgmt</a></li>
                    <li><a href="changepassword.jsp">Change password</a></li>
                     <li><a href="logout.jsp">Logout</a></li>
                </ul>	
            </div>
                  
                <div id="contain2" style="background-image:url('images/contain2.jpg');"> 
                    <center > 
                        <h2>Upload E-Study Material</h2>
                        <br><br>
                        <table> 
                            <tr> 
                                <td>Subject : </td>
                                <td><input type="text" name="subject" required=""/></td>
                            </tr>
                         
                            <tr> 
                                <td>Description : </td>
                                <td><textarea name="description" required="true"></textarea></td>
                            </tr>
                            <tr> 
                                <td>Upload Material</td>
                                <td><input type="file" name="file"/></td>
                            </tr>
                            <tr> 
                                <td calspan="2" align="center"><input type="submit" value="Upload" id="submit" ><td>
                            </tr>
                        </table>
                        <br><br>     
                        <table>
                            <tr>
                            <th>S.No</th> 
                            <th>Subject</th> 
                            <th>Description</th> 
                            <th>File Name</th> 
                            <th>Download</th>
                            <th>Upload Date</th>
                            <th>Delete</th>
                            </tr>
                           <%
                           DatabaseManager db=new DatabaseManager();
                           String q="select * from estudymaterial";
                           ResultSet rs =db.selectQuery(q);
                           int n=1;
                           while(rs.next())
                           {
                           %>
                           
                           <tr>
                               <td><%=n%></td>    
                               <td><%=rs.getString(2)%></td>
                               <td><%=rs.getString(3)%></td>
                               <td><%=rs.getString(4)%></td>
                               <td><a target="blank" href="<%= request.getContextPath()+"/uploadfile/"+rs.getString(4)%>">Download</a></td>
                               <td><%=rs.getString(5)%></td>
                               <td><a href="admincode/deluploadmaterial.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
                               
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