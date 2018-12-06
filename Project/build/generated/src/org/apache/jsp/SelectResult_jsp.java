package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SelectResult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html >\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\n");
      out.write("div.wrapper {\n");
      out.write("    \n");
      out.write("    width: 100%;\n");
      out.write("\t\n");
      out.write("    display: table;\n");
      out.write("\theight: 50px;\n");
      out.write("\tfont-family: Cursive; \n");
      out.write("}\n");
      out.write("div.option {\n");
      out.write("    text-align:center;\n");
      out.write("    display: table-cell;\n");
      out.write("\tfont-family: Cursive;  \n");
      out.write("  font-size: 25px;\n");
      out.write("}\n");
      out.write(" select{ margin: 10px;\n");
      out.write("  padding: 10px; \n");
      out.write("  border: 2px solid purple; \n");
      out.write("  width: 150px;\n");
      out.write("  -webkit-border-radius: 5px;\n");
      out.write("  -moz-border-radius: 5px;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("    <title>View Status</title> \n");
      out.write("\t\n");
      out.write("\t <link href=\"Home.css\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body >");

String str=(String)request.getAttribute("name1");

      out.write("\n");
      out.write("<div align=\"right\">\n");
      out.write("    <form method=\"post\" action=\"index.html\" >\n");
      out.write("        <input class=\"button\" type=\"submit\" value=\"Log out\">\n");
      out.write("  </form>\n");
      out.write("    <form method=\"post\" action=\"TeacherLogin.html\" >\n");
      out.write("        <input class=\"button\" type=\"submit\" value=\"Input Again\">\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<div class=\"wrapper\">\n");
      out.write("        <div class=\"option\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <form action=\"ExcelRead\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("   \n");
      out.write("        File: <input type=\"file\" name=\"file\" />\n");
      out.write("        <input type=\"submit\" value=\"Ok\" />\n");
      out.write("        <input type=\"hidden\"  name=\"sub\"  value=\"");
out.print(str);
      out.write("\">\n");
      out.write("</form>\n");
      out.write("\t\t\t<form method=\"post\" action=\"MarkUpload.jsp\">\n");
      out.write("\t\t\t\t<button class=\"button\">\n");
      out.write("\t\t\t\t    Insert Mark\n");
      out.write("\t\t\t\t</button>\n");
      out.write("                            <input type=\"hidden\"  name=\"Code\"  value=\"");
out.print(str);
      out.write("\">\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t\t<form method=\"post\" action=\"ShowMark.jsp\">\n");
      out.write("\t\t\t\t<button class=\"button\">\n");
      out.write("\t\t\t\t    Show Mark\n");
      out.write("\t\t\t\t</button>\n");
      out.write("                            <input type=\"hidden\"  name=\"Code\"  value=\"");
out.print(str);
      out.write("\">\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t\t<form method=\"post\" action=\"InputUpdatableId.jsp\">\n");
      out.write("\t\t\t\t<button class=\"button\">\n");
      out.write("\t\t\t\t    Update Mark\n");
      out.write("\t\t\t\t</button>\n");
      out.write("                            <input type=\"hidden\"  name=\"Code\"  value=\"");
out.print(str);
      out.write("\">\n");
      out.write("\t\t\t</form>\n");
      out.write("                        <form method=\"post\" action=\"ChangePassTeacher.jsp\">\n");
      out.write("\t\t\t\t<button class=\"button\">\n");
      out.write("\t\t\t\t    Change Password\n");
      out.write("\t\t\t\t</button>\n");
      out.write("                            \n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html >");
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
