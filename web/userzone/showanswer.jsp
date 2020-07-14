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
        <link href="css/userstyle.css" rel="stylesheet"/>
        <link href="css/menu.css" rel="stylesheet">
    </head>
    <body style="background-image:url('images/banner8.png');"> <%
        response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
        if (session.getAttribute("username") == "" || session.getAttribute("username") == null)
            response.sendRedirect("../login.jsp");

        else {
        %>
        <form>

            <div id="wrapper">
                <div id="header">
                    <div id="logo">
                        <img src="images/logo.png" width="150" height="150"/>
                    </div>
                    <div id="sitetitle">
                        E-Study zone 
                    </div>
                </div>
                <div id="contain1" >
                    <div id="date">
<%
                     java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd/MM/yyyy");
                     out.print(sdf.format(new java.util.Date()));

%>
                    </div>
                    <div id="name">
                        <%
                            DatabaseManager dm = new DatabaseManager();
                            String username = session.getAttribute("username").toString();
                            String query = "select student_name from student_registration where username='" + username + "'";
                            ResultSet rs = dm.selectQuery(query);
                            if (rs.next() == true) {
                                out.print(rs.getString(1));
                            }
                        %>
                    </div>
                </div>
            <div id="menu">
                <ul>
                    <li><a href="userhome.jsp">Home</a></li>
                     <li><a href="postquestion.jsp">Discussion Board</a></li>
                      <li><a href="complain.jsp">Complain</a></li>
                       <li><a href="feedback.jsp">Feedback</a></li>
                    <li><a href="changepassword.jsp">Change password</a></li>
                     <li><a href="logout.jsp">Logout</a></li>
                </ul>	
            </div>
                  
                <div id="contain2" style="background-image:url('images/contain2.jpg');"> 
                    <h1>Show Replay</h1>
                    <table border="1">
                        <tr> 
                            
                            <th colspan="4">Question:<%=request.getParameter("questiontext")%></th>
                        </tr>
                            <tr>
                                <th> S.No.</th>
                                <th>Answer</th>
                                <th>Posted By</th>
                                <th>posted By</th>
                            </tr>
                            <%  
                                int n=1;
                                String q="select * from ans where qid='"+request.getParameter("qid")+"'";
                                ResultSet r=dm.selectQuery(q);
                                while(r.next())
                                {
                            %>
                            <tr> 
                                <td><%=n%></td>
                                <td><%=r.getString("atext")%></td>
                                <td><%=r.getString("username")%></td>
                                <td><%=r.getString("cdate")%></td>
                            </tr>
                                    <% 
                                            n++;}
                                    %>
                            
                            
                    </table>

                </div>
                <div id="footer">
                    <div class="subfooter">
                        Copyright &copy; to E-Study Zone
                    </div>
                    <div class="subfooter">
                        Devloped By : Ankit Anand
                    </div>
                </div>

            </div>
        </form>
    </body>
</html>
<%
    }
%>
