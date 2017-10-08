<%-- 
    Document   : citydelete
    Created on : Sep 26, 2014, 9:12:49 PM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>
<%

try{
	
        
	sql_stmnt="DELETE FROM city_master WHERE city='"+request.getParameter("city")+"'";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("adddata.jsp");
        
}catch(Exception e) {}

%>
