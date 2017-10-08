<%-- 
    Document   : Schedule_delete
    Created on : Sep 15, 2014, 8:57:21 PM
    Author     : Hitesh Gupta
--%>

 <%@include file="uphome.jsp" %>
<%

try{
	
        
	sql_stmnt="DELETE FROM schedule_master WHERE schedule_id="+request.getParameter("shid")+"";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("Schedule_form.jsp?caid="+request.getParameter("caid")+"&caseno="+request.getParameter("caseno"));
        
}catch(Exception e) {}

%>
