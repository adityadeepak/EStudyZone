<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<% 
ResultSet rs=null;
String name="";

String questiontext=request.getParameter("questiontext").trim();
DatabaseManager dm=new DatabaseManager();
rs=dm.selectQuery("select nvl(max(qid),0)+1 from question");
rs.next();
int qid=rs.getInt(1);
String username=session.getAttribute("username").toString();
String query1="select student_name,contactno,emailaddress from student_registration where username='"+username+"'";
rs=dm.selectQuery(query1);
if(rs.next()==true)
{
name=rs.getString(1);  
}
SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy hh:mm");
String posteddt=df.format(new Date());
String query2="insert into question values("+qid+",'"+name+"','"+questiontext+"','"+posteddt+"')";
if(dm.executeNonQuery(query2)==true)
{
    out.print("<script>alert('Question is submited');window.location.href='../postquestion.jsp';</script>");
}
else
    out.print("<script>alert('Database Error');window.location.href='../postquestion.jsp';</script>");
    
    

%>