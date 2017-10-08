<%-- 
    Document   : statedelete
    Created on : Sep 26, 2014, 9:13:04 PM
    Author     : Hitesh Gupta
--%>


<%@include file="uphome.jsp" %>
<%

try{
	
        
	sql_stmnt="DELETE FROM state_master WHERE state='"+request.getParameter("state")+"'";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("adddata.jsp");
        
}catch(Exception e) {}

%>
