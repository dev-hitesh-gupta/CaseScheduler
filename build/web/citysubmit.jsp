<%-- 
    Document   : citysubmit
    Created on : Sep 26, 2014, 9:02:25 PM
    Author     : Hitesh Gupta
--%>



   <%@include file="uphome.jsp" %>
 
<%



try{
	
        
	
	sql_stmnt="insert into city_master values('"+request.getParameter("city").toUpperCase()+"')";
	int i=s.executeUpdate(sql_stmnt);
        
        response.sendRedirect("adddata.jsp");
}catch(Exception e) {response.sendRedirect("adddata.jsp?error=city already exist");
}
    


%>

            