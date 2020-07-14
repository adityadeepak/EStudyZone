
<%@page import="MyPackage.DatabaseManager"%>
<%
String oldpass=request.getParameter("oldpass");
String newpass=request.getParameter("newpass");
String confirmpass=request.getParameter("cpass");
DatabaseManager db=new DatabaseManager();
String query="update login set passwd='"+newpass+"' where userid='"+session.getAttribute("username")+"' and passwd='"+oldpass+"'";
if(newpass.equals(confirmpass))
{
 String msg=(db.executeNonQuery(query)==true)?"Your password is updated":"Your password is not updated";
  out.print(("<script>alert('"+msg+"');window.location.href='../usercode/userhome.jsp';</script>"));
}
else
{
    out.print(("<script>alert('your password is not confirmed');window.location.href='../usercode/changepassword.jsp';</script>"));
}
%>