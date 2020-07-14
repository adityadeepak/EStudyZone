

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.DatabaseManager"%>
<%
    String answer = request.getParameter("answer");
    String qid = request.getParameter("qid");
    DatabaseManager dm = new DatabaseManager();
    String cdate = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
    ResultSet rs = dm.selectQuery("select nvl(max(aid),0)+1 from ans");
    rs.next();
    int id = rs.getInt(1);
    String q = "insert into ans values('" + id + "','" + qid + "','" + answer + "','" + session.getAttribute("username") + "','" + cdate + "')";

    boolean b = dm.executeNonQuery(q);
    if (b == true) {
        out.print("<script>alert('Answer Is Posted!!!');window.location.href='../postquestion.jsp';</script>");
    } else {
        out.print("<script>alert('Answer Is Not Posted!!!');window.location.href='../postquestion.jsp';</script>");
//     String msg=(dm.executeNonQuery(q)==true)?"Answere is posted":"Answere is not posted";
    }
%>


