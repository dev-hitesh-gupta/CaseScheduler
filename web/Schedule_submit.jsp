<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>


   <%@include file="uphome.jsp" %>
 
<%



try{
	
        
	
	sql_stmnt="insert into schedule_master (case_id,date,remark)values("+request.getParameter("caid")+",'"+request.getParameter("date")+"','"+request.getParameter("remark").toUpperCase()+"')";
	int i=s.executeUpdate(sql_stmnt);
        
        response.sendRedirect("Schedule_form.jsp?caid="+request.getParameter("caid")+"&caseno="+request.getParameter("caseno"));
}catch(Exception e) {response.sendRedirect("Schedule_form.jsp?caid="+request.getParameter("caid")+"&caseno="+request.getParameter("caseno")+"&error=you may not fill form correctly");
}
    


%>

            