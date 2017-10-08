<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %>
<%

try{
	
        
	
	sql_stmnt="update client_master set client_name='"+request.getParameter("pnam").toUpperCase()+"',address1='"+request.getParameter("padd1").toUpperCase()+"',refrence='"+request.getParameter("padd2").toUpperCase()+"',pin='"+request.getParameter("pin")+"',city='"+request.getParameter("city")+"',state='"+request.getParameter("state")+"',mbn='"+request.getParameter("mbn")+"',email='"+request.getParameter("email")+"' where client_id="+request.getParameter("clid")+"";
	int i=s.executeUpdate(sql_stmnt);
        out.println("Data Updated");
        response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid")+"");
}catch(Exception e) {response.sendRedirect("Client_edit.jsp?clid="+request.getParameter("clid")+"&error=you may not fill form correctly");}
//
%>
            