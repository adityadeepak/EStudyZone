<%@page import="MyPackage.DatabaseManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
     String capcode=request.getParameter("capcode");
     String captcha_code=request.getParameter("captchacode");
     if(capcode.equals(captcha_code)==true)
     {
   
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String college_name=request.getParameter("college_name");
    String select_qualification=request.getParameter("select_qualification");
    String select_training_type=request.getParameter("select_training_type");
    long contactno=Long.parseLong(request.getParameter("contactno"));
    String emailaddress=request.getParameter("emailaddress");
    long guardian_contactno=Long.parseLong(request.getParameter("guardian_contactno"));
    String user_name=request.getParameter("user_name");
    String password=request.getParameter("password");
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String registration_dt=df.format(new Date());
    String usertype="student";
    String status="no";
    DatabaseManager dm=new DatabaseManager();
    String query1="insert into student_registration values('"+name+"','"+gender+"','"+address+"','"+college_name+"','"+select_qualification+"','"+select_training_type+"',"+contactno+",'"+emailaddress+"',"+guardian_contactno+",'"+user_name+"','"+password+"','"+registration_dt+"')";

    String query2="insert into login values('"+user_name+"','"+password+"','"+usertype+"','"+status+"')";
    if(dm.executeNonQuery(query1)==true)
    {
      if(dm.executeNonQuery(query2)==true)
      {
          out.println("<script>alert('Resistration is successfull');window.location.href='../studentregistratiob.jsp';</script>");
      }
      else
      {
          out.println("<script>alert('Registration is done but login details are not saved');window.location.href='../studentregistratiob.jsp';</script>");
      }
    }
    else
    {
        out.println("Database Error");
    }
     }
     else
     {
         out.print("<script>alert('Invalid captcha code');window.location.href='../studentregistratiob.jsp';</script>");
     }
    %>