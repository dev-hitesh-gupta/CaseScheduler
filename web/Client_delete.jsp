<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>

   <%@include file="uphome.jsp" %>
<%


try{
        
	sql_stmnt="DELETE FROM client_master WHERE client_id="+request.getParameter("clid")+"";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("home.jsp");
        
}catch(Exception e) { response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid")+"&error=you need to delete cases first");}

%>
            