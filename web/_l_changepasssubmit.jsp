<%-- 
    Document   : changepasssubmit
    Created on : Aug 24, 2014, 9:54:18 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp" %>
        <%

Statement s;

try{
	Class.forName(driver);
	Connection c = DriverManager.getConnection(url+dbName,userName,password);
	s=c.createStatement();

	String sql_stmnt;
        
        
	
	sql_stmnt="update account_master set password='"+request.getParameter("pass")+"' where username='"+request.getParameter("id")+"'";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("[l]login.jsp");
}catch(Exception e) {response.sendRedirect("[l]changepassinvalid.jsp?id="+request.getParameter("id"));}

        %>
<%@include file="downlogin.jsp" %>
