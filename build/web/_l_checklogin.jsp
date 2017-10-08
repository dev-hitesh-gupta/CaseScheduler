<%-- 
    Document   : checklogin
    Created on : Aug 24, 2014, 9:07:08 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp" %>
        <%

try{
	
	
	sql_stmnt= "SELECT * FROM account_master where username='"+request.getParameter("usr")+"' and password='"+request.getParameter("pwd")+"'";
	
	rs=s.executeQuery(sql_stmnt);
        
	if(rs.next())
	{
            
        String usr;     
        usr= request.getParameter("usr");
        session.setAttribute("id",usr);
        response.sendRedirect("home.jsp");
        
        }else
        {
        response.sendRedirect("[l]invalidlogin.jsp");
        }
        
        
        
        
        
        
}catch(Exception e) { out.println(e);}
%>
        
<%@include file="downlogin.jsp" %>
