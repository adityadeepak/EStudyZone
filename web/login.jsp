<%-- 
    Document   : index
    Created on : 19 Jul, 2017, 4:54:54 PM
    Author     : Aditya raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/menu" rel="stylesheet"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/loginStyle.css" rel="stylesheet"/>
        <link href="btstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="btstrap/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="btstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="btstrap/js/jquery.js"></script>
        <script src="btstrap/js/bootstrap.min.js"></script>
        <script>
             var i=0;
             var imglist=["banner1.jpg","banner2.png","banner3.jpg","banner4.jpg"];
             function moveSlider()
             {
                 document.getElementById("slide").src="images/"+imglist[i];
                 i++;
                 if(i==imglist.length)
                 i=0;
             window.setTimeout("moveSlider()",2000);
             }
         </script>
    </head>
    <body onload="moveSlider()" style="background-image:url('images/mainpage.jpg');">
           
            <!--<img src="images/7a.jpg" alt=""/>-->
            <form action="code/logincode.jsp" method="post">
	<div id="wrapper">
		<div id="header">
                    <div id="logo">
                        <img src="images/elogo.png" width="150" height="150"/>
                    </div>
                    <div id="banner">
                        <img src="images/design.jpg" width="850" height="150"/>
                    </div>
		</div>
            <div id="menu">
                <ul>
	<li><a href="index.jsp">HOME</a></li>
	<li><a href="#">Services</a></li>
	<li><a href="studentregistration.jsp">Registration</a></li>
	<li><a href="login.jsp">Login</a></li>
	<li><a href="enquiry.jsp">Enquiry</a></li>
                </ul>	
            </div>
                <div id="slider">
                    <img id="slide" height="250" width="1000"/>
                </div>
		<div id="container">
			<div id="left"></div>
                        <div id="main" style="background-image: url('images/main2.jpg')">
                            <div class="col-sm-7 a"><marquee>WELCOME TO <b style="color: #ff33cc;font-size:45;">E-</b> Study <b style="color: #ff6633;font-size:45;">Zone </b>Login</marquee></div><hr>
                     <div id="login">       
                         <center><h1>Sign In</h1></center>
                                <hr>
                            <table class="text">
                                <tr>
                                    
                                    <td><input type="text" name="userid" placeholder='User Id or Name' required="true"/></td>
                                </tr>
                                <tr>
                                   
                                    <td>
                                        <input type="password" name="password" placeholder='Password' required="true"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="submit" name="submit"  value="Submit"/></td>
                                </tr>
                            </table>
                        </div>

		</div>
                 <div id="footer" style="background-image: url('images/footer.png')">
                    <div id="lfooter">
                        <h1> Copyright&COPY; to Estudyzone </h1>
                    </div>
                    <div id="rfooter">
                        <center><h1>Devloped by..</h1></center>
                        <h4><span style="color: goldenrod">Enrollment No.:</span>spi/st/2017/387 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: aqua">College Name: </span>R.E.C Bijnore</h4>
                         <h4></h4>
                        
                    </div>
                </div>
	</div>
        </div>
        </form> 
       
    </body>
</html>
