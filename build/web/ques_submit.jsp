<%-- 
    Document   : ques_submit
    Created on : Aug 4, 2014, 6:55:08 PM
    Author     : Hitesh Gupta
--%>
<%@include file="uphome.jsp" %>
<%



try{
	
        
	
	sql_stmnt="update account_master set question='"+request.getParameter("ques")+"',answer='"+request.getParameter("ans")+"' where username='"+session.getAttribute("id")+"'";
	int i=s.executeUpdate(sql_stmnt);
        out.println("Data Updated");
        
}catch(Exception e) {out.println(e);}

%>