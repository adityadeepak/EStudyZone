<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<% 
ResultSet rs=null;
String name="",emailaddress="";
long contactno=0;
String feedbacktext=request.getParameter("feedbacktext");
DatabaseManager dm=new DatabaseManager();
rs=dm.selectQuery("select nvl(max(id),0)+1 from feedback");
rs.next();
int id=rs.getInt(1);
String username=session.getAttribute("username").toString();
String query1="select student_name,contactno,emailaddress from student_registration where username='"+username+"'";
rs=dm.selectQuery(query1);
if(rs.next()==true)
{
    name=rs.getString(1);
    contactno=rs.getLong(2);
    emailaddress=rs.getString(3);
}
SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
String feedbackdt=df.format(new Date());
String query2="insert into feedback values("+id+",'"+name+"','"+contactno+"','"+emailaddress+"','"+feedbacktext+"','"+feedbackdt+"')";
if(dm.executeNonQuery(query2)==true)
{
    out.print("<script>alert('Feedback is submited');window.location.href='../feedback.jsp';</script>");
}
else
    out.print("<script>alert('Database Error');window.location.href='../feedback.jsp';</script>");
    
    

%>