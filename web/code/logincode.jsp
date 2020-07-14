
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
DatabaseManager dm=new DatabaseManager();
String query="select usertype from login where userid='"+userid+"' and passwd='"+password+"'";

ResultSet rs=dm.selectQuery(query);
if(rs.next()==true)
{
   String usertype=rs.getString(1);
   if(usertype.equals("student"))
   {
    session.setAttribute("username",userid);
    response.sendRedirect("../userzone/userhome.jsp");
 } 
   else if(usertype.equals("admin"))
   {
       session.setAttribute("adminid", userid);
       response.sendRedirect("../adminzone/adminhome.jsp");
   }
}
else
out.println("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");
%>