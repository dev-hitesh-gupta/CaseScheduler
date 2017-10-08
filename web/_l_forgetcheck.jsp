<%-- 
    Document   : forgetcheck
    Created on : Aug 24, 2014, 9:42:36 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp" %>
        <%

try{
	
	
	sql_stmnt= "SELECT * FROM account_master where username='"+request.getParameter("usr")+"' and question='"+request.getParameter("ques")+"' and answer='"+request.getParameter("ans")+"'";
	
	rs=s.executeQuery(sql_stmnt);
        
	if(rs.next())
	{
            
        
        response.sendRedirect("[l]changepass.jsp?id="+rs.getString("username"));
        
        }else
        {
        response.sendRedirect("[l]invalidforget.jsp");
        }
        
        
        
        
        
        
}catch(Exception e) { out.println(e);}
%>
   <%@include file="downlogin.jsp" %>
