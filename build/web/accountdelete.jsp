<%-- 
    Document   : accountdelete
    Created on : Sep 1, 2014, 8:54:11 PM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp"%>
<%


try{
        
        
	sql_stmnt="DELETE FROM account_master WHERE username='"+request.getParameter("usr")+"'";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("accountlist.jsp");
        
}catch(Exception e) { out.println(e);}
%>

