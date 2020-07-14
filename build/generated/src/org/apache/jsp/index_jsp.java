package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"css/menu\" rel=\"stylesheet\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/generalstyle.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script>\n");
      out.write("             var i=0;\n");
      out.write("             var imglist=[\"banner1.jpg\",\"banner2.png\",\"banner3.jpg\",\"banner4.jpg\"];\n");
      out.write("             function moveSlider()\n");
      out.write("             {\n");
      out.write("                 document.getElementById(\"slide\").src=\"images/\"+imglist[i];\n");
      out.write("                 i++;\n");
      out.write("                 if(i==imglist.length)\n");
      out.write("                 i=0;\n");
      out.write("             window.setTimeout(\"moveSlider()\",2000);\n");
      out.write("             }\n");
      out.write("         </script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"moveSlider()\" style=\"background-image:url('images/mainpage.jpg');\">\n");
      out.write("            \n");
      out.write("        <form>\n");
      out.write("\t<div id=\"wrapper\">\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("                    <div id=\"logo\">\n");
      out.write("                        <img src=\"images/elogo.png\" width=\"150\" height=\"150\"/>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"banner\">\n");
      out.write("                        <img src=\"images/design.jpg\" width=\"850\" height=\"150\"/>\n");
      out.write("                    </div>\n");
      out.write("\t\t</div>\n");
      out.write("            <div id=\"menu\">\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"index.jsp\"><span style=\"background-color: white;\">&#127968;</span> HOME</a></li>\n");
      out.write("\t<li><a href=\"#\">Services</a></li>\n");
      out.write("\t<li><a href=\"studentregistration.jsp\">Registration</a></li>\n");
      out.write("\t<li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("\t<li><a href=\"enquiry.jsp\">Enquiry</a></li>\n");
      out.write("                </ul>\t\n");
      out.write("            </div>\n");
      out.write("                <div id=\"slider\">\n");
      out.write("                    <img id=\"slide\" height=\"250\" width=\"1000\"/>\n");
      out.write("                </div>\n");
      out.write("\t\t<div id=\"container\">\n");
      out.write("\t\t\t<div id=\"left\"></div>\n");
      out.write("\t\t\t<div id=\"main\" style=\"background-image: url('images/main1.jpg')\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("                <div id=\"footer\" style=\"background-image: url('images/footer.png')\">\n");
      out.write("                    <div id=\"lfooter\">\n");
      out.write("                        <h1> Copyright&COPY; to Estudyzone </h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"rfooter\">\n");
      out.write("                        <center><h1>Devloped by..</h1></center>\n");
      out.write("                        <h4><span style=\"color: goldenrod\">Enrollment no.:</span>spi/st/2017/387 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color: aqua\">College Name: </span>R.E.C Bijnore</h4>\n");
      out.write("                         <h4></h4>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\t</div>\n");
      out.write("        </form> \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
