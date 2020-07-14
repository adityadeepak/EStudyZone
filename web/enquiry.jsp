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
        <link href="css/generalstyle.css" rel="stylesheet"/>
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
    <body onload="moveSlider()" background="images/mainpage.jpg">
        <form action="SaveEnquiry" method="post">
	<div id="wrapper">
		<div id="header">
                    <div id="logo">
                        <img src="images/elogo.png" width="150" height="150"/>
                    </div>
                    <div id="banner">
                        <img src="images/banner5.jpg" width="850" height="150"/>
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
                        <div id="main">
                            <h1 style="text-align: center;color: blue">Enquiry Form</h1>
                            <div id="tabledata">
                            <table align="center">
                                <tr>
                                    <td>Enter your name</td>
                                    <td><input type="text" name="name" class="name" required="true"></td>
                                </tr>
                                <tr>
                                <td>Select the Gender</td>
                                <td><input type="radio" name="gender" value="Male" id="male">Male
                                    <input type="radio" name="gender" value="Female"id="female">Female
                                </td>
                                </tr>
                                <tr>
                                    <td>Enter your Address</td>
                                    <td><textarea name="address" class="address" required="true"></textarea></td>
                                </tr>
                                 <tr>
                                    <td>Enter your Contact No.</td>
                                    <td><input type="text" name="contactno" class="name" required="true"></td>
                                </tr>
                                 <tr>
                                    <td>Enter your EmailAddress</td>
                                    <td><input type="text" name="emailaddress" class="name" required="true"></td>
                                </tr>
                                 <tr>
                                    <td>Enter your Message</td>
                                    <td><textarea name="message" class="address" ></textarea></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="submit" name="submit"></td>
                                </tr>
                            </table>
                            </div>
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
        </form>      
    </body>
</html>
