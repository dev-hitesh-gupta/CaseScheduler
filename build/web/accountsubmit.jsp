<%-- 
    Document   : accountsubmit
    Created on : Sep 1, 2014, 6:42:06 PM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>
<%



try{
	
        
        
	
	sql_stmnt="insert into account_master (name,username,password,mobile_no,email,question,answer,type)values('"+request.getParameter("name")+"','"+request.getParameter("usr")+"','"+request.getParameter("pass")+"','"+request.getParameter("mbn")+"','"+request.getParameter("email")+"','"+request.getParameter("ques")+"','"+request.getParameter("ans")+"',"+request.getParameter("type")+")";
	int i=s.executeUpdate(sql_stmnt);
        response.sendRedirect("accountshow.jsp?usr="+request.getParameter("usr"));
}catch(Exception e) { response.sendRedirect("account.jsp?error=username is already used");}
%>
