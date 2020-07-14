<%@page import="MyPackage.DatabaseManager"%>
<%
String fid=request.getParameter("fid");
DatabaseManager db=new DatabaseManager();
String q="delete from feedback where id='"+fid+"'";

String msg=(db.executeNonQuery(q)==true)?"Feedback is deleted":"Feedback is not deleted";
%>

<script>
    alert('<%=msg%>');
    window.location.href="../feedbackmanagement.jsp";
</script>
