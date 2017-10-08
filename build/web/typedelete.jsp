<%-- 
    Document   : typedelete
    Created on : Sep 26, 2014, 9:13:15 PM
    Author     : Hitesh Gupta
--%>


<%@include file="uphome.jsp" %>
<%

try{
	
        
	sql_stmnt="DELETE FROM case_type_master WHERE case_type='"+request.getParameter("type")+"'";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("adddata.jsp");
        
}catch(Exception e) {}

%>

