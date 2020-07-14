<%@page import="MyPackage.DatabaseManager"%>
<%
String id=request.getParameter("id");
DatabaseManager db=new DatabaseManager();
String q="delete from estudymaterial where id='"+id+"'";

String msg=(db.executeNonQuery(q)==true)?"Upload material is deleted":"Upload material is not deleted";
%>

<script>
    alert('<%=msg%>');
    window.location.href="../uploadmaterial.jsp";
</script>
