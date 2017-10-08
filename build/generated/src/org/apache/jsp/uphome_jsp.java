package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class uphome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/admin.jsp");
    _jspx_dependants.add("/clerk.jsp");
    _jspx_dependants.add("/junior.jsp");
  }

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

      out.write('\n');
      out.write('\n');
String url = "jdbc:mysql://localhost:3306/";
		  String dbName = "cs";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "30121993";
                  Statement s;
                  ResultSet rs;
                  String sql_stmnt;
                  Statement s3;
                  ResultSet rs3;
                  String sql_stmnt3;
                  Statement s2;
                  ResultSet rs2;
                  String sql_stmnt2;
                  Statement s1;
                  ResultSet rs1;
                  String sql_stmnt1;
                  Class.forName(driver);
                  Connection conn = DriverManager.getConnection(url+dbName,userName,password);
                  s=conn.createStatement();
                  s1=conn.createStatement();
                  s2=conn.createStatement();
                  s3=conn.createStatement();
                  
      out.write('\n');

    if(session.getAttribute("id")==null)
   {
        response.sendRedirect("[l]login.jsp");
    }

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"favicon.ico\" />\n");
      out.write("        <title>CASE SCHEDULER</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("        \n");
      out.write("<script type=\"text/javascript\" src=\"print.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#000000\">\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div id=\"header\" style=\" background: -webkit-radial-gradient(#999999,#000000);background: -moz-radial-gradient(#999999,#000000);background: radial-gradient(#999999,#000000); border-width: 5px;border-style: outset;border-color: #ffffff; margin:auto;height:15%;width:99%;\">\n");
      out.write("                    <br>\n");
      out.write("                    <center><h1 class=\"font\" style=\"text-shadow: 5px 5px 5px black; color:white;\" >CASE SCHEDULER</h1>   <H4 class=\"font\">For Advocate's</h4></center>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </div>");
      out.write("\n");
      out.write("        \n");
      out.write("            <marquee class=\"font\">WELCOME to case scheduler</marquee>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div id=\"menu\" style=\"background-color:#000000;margin:auto;border-width: 5px;border-style: outset;border-color: #ffffff;  height:100%;width:22.50%;float:left;\">\n");
      out.write("                <form action=\"search_list.jsp\">\n");
      out.write("                    <ul class=\"list\">\n");
      out.write("                        ");


try{
	
        sql_stmnt= "SELECT * FROM account_master where username = '"+session.getAttribute("id")+"' ";
	rs=s.executeQuery(sql_stmnt);
	rs.next();
        if(new String(rs.getString("type")).equals("1"))
        {
            
      out.write("\n");
      out.write("\n");
      out.write("<li class=\"head\"><a class=\"head\" href=\"home.jsp\"><span>HOME</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"seeyou.jsp\"><span>See your Account</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"[l]login.jsp\"><span>Sign Out</span></a></li>\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"#\"><span>Accounts</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"account.jsp\"><span>Create Account</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"accountlist.jsp\"><span>list of account</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"adddata.jsp\"><span>ADD DATA</span></a></li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"#\"><span>clients</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"Client_form.jsp\"><span>New Registration</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"Client_search.jsp\"><span>See any Client</span></a></li>\n");
      out.write("                        \n");
   
        }
        else if(new String(rs.getString("type")).equals("2"))
        {
             
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"home.jsp\"><span>home</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"seeyou.jsp\"><span>See your Account</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"[l]login.jsp\"><span>Sign Out</span></a></li>\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"#\"><span>clients</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"Client_form.jsp\"><span>New Registration</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"Client_search.jsp\"><span>See any Client</span></a></li>\n");
      out.write("                        \n");
      out.write("                       ");
   
        }
        else if(new String(rs.getString("type")).equals("3"))
        {
             
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"home.jsp\"><span>Home</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"seeyou.jsp\"><span>See your Account</span></a></li>\n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"[l]login.jsp\"><span>Sign Out</span></a></li>\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"#\"><span>clients</span></a></li>\n");
      out.write("                        \n");
      out.write("                        <li class=\"list\"><a class=\"list\" href=\"Client_search.jsp\"><span>See any Client</span></a></li>\n");
      out.write("                        ");
   
        }
        
}catch(Exception e) { out.println(e);}

      out.write("\n");
      out.write("                        <li class=\"head\"><a class=\"head\" href=\"#\"><span>Search From Causelist</span></a></li>\n");
      out.write("                        <li><input type=\"text\" name=\"search\"></li>\n");
      out.write("                        <li><select name=\"list\">\n");
      out.write("                                <optgroup label=\"REGULAR MAIN\">\n");
      out.write("                            <option value=\"gsb\">regular (sb)</option>\n");
      out.write("                            <option value=\"gdb\">regular (db)</option>\n");
      out.write("                                </optgroup>\n");
      out.write("                                <optgroup label=\"MAIN\">\n");
      out.write("                            ");


try{
	
	sql_stmnt= "SELECT * FROM sync_record where file_type like '%_m' ";
	
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            
      out.write("<option value=\"");
out.print(rs.getString("file_type"));
      out.write('"');
      out.write('>');
out.print(rs.getString("name")+"("+rs.getString("sync_date")+")");
      out.write("</option>  ");

	}
}catch(Exception e) { out.println(e);}

      out.write("\n");
      out.write("                                </optgroup>\n");
      out.write("                                <optgroup label=\"SUPPLYMENTARY\">\n");
      out.write("                            ");

try{
	
	sql_stmnt= "SELECT * FROM sync_record where file_type like '%_s' ";
	
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            
      out.write("<option value=\"");
out.print(rs.getString("file_type"));
      out.write('"');
      out.write('>');
out.print(rs.getString("name")+"("+rs.getString("sync_date")+")");
      out.write("</option>  ");

	}
}catch(Exception e) { out.println(e);}

      out.write("\n");
      out.write("                                </optgroup>\n");
      out.write("                            </select></li>\n");
      out.write("                            <li><input class=\"menu\" type=\"submit\" name=btn value=\"Search list\"><input class=\"menu\" type=\"submit\" name=btn value=\"SEARCH COMPLETE LIST\" formaction=\"completelist_search.jsp\"></li>\n");
      out.write("                        <li><input class=\"menu\" type=\"submit\" name=btn value=\"Auto list\" formaction=\"list.jsp\"><input class=\"menu\" type=\"submit\" name=btn value=\"Show note\" formaction=\"listnote.jsp\"></li>\n");
      out.write("                        <li><input class=\"menu\" type=\"submit\" name=btn value=\"COMPLETE LIST\" formaction=\"completelist.jsp\"></li>\n");
      out.write("                        \n");
      out.write("                            \n");
      out.write("                        \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    </ul>\n");
      out.write("                                \n");
      out.write("\n");
      out.write("<input type=\"button\"   onClick=\"printdiv('div_print');\" value=\" Print \">\n");
      out.write("\n");
      out.write("                 </form>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("                 </div> \n");
      out.write("             \n");
      out.write("                <div id=\"div_print\" style=\"background:#ffffff ;margin:auto;height:100%;width:75.50%;border-width: 5px;border-style: outset;border-color: #ffffff; float:left;overflow:scroll; \">");
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
