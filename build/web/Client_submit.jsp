<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %> 
<%


try{
	
        
	
	sql_stmnt="insert into client_master (client_name,address1,refrence,pin,city,state,mbn,email)values('"+request.getParameter("pnam").toUpperCase()+"','"+request.getParameter("padd1").toUpperCase()+"','"+request.getParameter("padd2").toUpperCase()+"','"+request.getParameter("pin")+"','"+request.getParameter("city").toUpperCase()+"','"+request.getParameter("state")+"','"+request.getParameter("mbn")+"','"+request.getParameter("email")+"')";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("Client_show.jsp");
}catch(Exception e) {response.sendRedirect("Client_form.jsp?&error=you may not fill form correctly"); }
//
%>

            