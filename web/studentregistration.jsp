<%@page import="MyPackage.CaptchaGenerator"%>
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
    <body onload="moveSlider()" style="background-image:url('images/mainpage.jpg');">
           
            <!--<img src="images/7a.jpg" alt=""/>-->
            <form action="code/registrationcode.jsp" method="post">
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
			<div id="left1"></div>
                        <div id="main" style="background-image: url('images/mainpage.jpg')" >
                            <div id="student_registration">
                           
                                <center><h2 style="color: #009999">Student Registration </h2></center>
                                <div id="tabtotal">
                                   
                                <div class="table1">
                                    
                            <table>
                                
                                <tr>
                                   
                                    <td>
                                        <input type="text" name="name" class="srtext" placeholder="Name"/>
                                    </td>
                                       </tr>
                                       <tr>
                                   
                                    <td>
                                        <input type="text" name="user_name" class="srtext" placeholder="Enter username" />
                                    </td>
                                </tr>
                                <tr>
                                  
                                    <td><input type="number" name="contactno" class="srtext" placeholder="Enter contact no"></td>
                                </tr>
                                      
                                       <tr>
                                    
                                    <td><textarea name="address" id="address" placeholder="Enter your address"></textarea></td>
                                </tr>
                                <tr>
                                   
                                    <td>
                                        <input type="text" name="college_name" class="srtext" placeholder="College Name"/>
                                    </td>
                                       </tr>
                                 
                                       <tr>
                                        
                                           <td><select name="select_qualification" class="srtext">
                                                           <option>---Qualification---</option>
                                                           <option>B-tech</option>
                                                           <option>B-CA</option>
                                                           <option>M-CA</option>
                                                           <option>Diploma</option>
                                               </select></td>
                                       </tr>
                                       <tr>
                                           
                                           <td><select name="select_training_type" class="srtext">
                                                   
                                                           <option>Java</option>
                                                           <option>PHP</option>
                                                           <option>Android</option>
                                                           <option>Htnl</option>
                                               </select></td>
                                       </tr>
                            </table>
                                </div>
                                <div class="table1">
                                <table>
                                       
                                    <tr>
                                <td><input type="radio" name="gender" value="Male" id="male">Male
                                    <input type="radio" name="gender" value="Female" id="female">Female
                                </td>
                                       </tr>
                                <tr>
                                    
                                    <td><input type="text" name="emailaddress" class="srtext" placeholder="Enter your emailaddress"></td>
                                </tr>
                                <tr>
                                    
                                    <td><input type="number" name="guardian_contactno" class="srtext" placeholder="Enter Guardian Contact no."></td>
                                </tr>
                                
                                <tr>
                                    
                                    <td><input type="password" name="password" class="srtext" placeholder="Enter Your password" /></td>
                                </tr>
                                <tr>
                                      
                                      <td>
                                          <% 
                                          CaptchaGenerator cg=new CaptchaGenerator();
                                          String capcode=cg.createCaptcha();
                                          %>
                                          <h3><strike><%=capcode%></strike></h3>
                                          <input type="hidden" name="capcode" value="<%=capcode%>" class="captcha"/>
                                      </td>
                                </tr>
                                <tr>
                                   
                                    <td><input type="text" name="captchacode" class="srtext" placeholder="Enter captcha code"></td>
                                </tr>
                                 
                                
                                </table>       
                                </div>
                            
                                    <input type="submit">
                               
                        </div>
                        </div>
		</div>
            
                 <div id="footer" style="background-image: url('images/footer.png')">
                    <div id="lfooter">
                        <h1> Copyright&COPY; to Estudyzone </h1>
                    </div>
                    <div id="rfooter">
                        <center><h1>Devloped by..</h1></center>
                        <h4><span style="color: goldenrod">Enrollment no.:</span>spi/st/2017/387 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: aqua">College Name: </span>R.E.C Bijnore</h4>
                         <h4></h4>
                        
                    </div>
                </div>
	</div>
        </form> 
       
    </body>
</html>
