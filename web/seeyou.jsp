<%-- 
    Document   : seeyou
    Created on : Sep 1, 2014, 7:52:37 PM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>
<%


try{
	
	
	sql_stmnt= "SELECT * FROM account_master where username ='"+session.getAttribute("id")+"'";
	rs=s.executeQuery(sql_stmnt);
		rs.next();
                
                    out.println("<table class='detail'><tr><td class='detail'><b>UserName:</b></td><td>"+rs.getString("username")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>Name:</b></td><td>"+rs.getString("name")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>Mobile no.:</b></td><td>"+rs.getString("mobile_no")+"</td>");
                    out.println("<tr><td class='detail'><b>Email:</b></td><td>"+rs.getString("email")+"</td></tr>");
                    out.println("<tr><td></td><td><a href='edit_ques.jsp'>Change Security Queston</a></td></tr>");
                    out.println("<tr><td></td><td><a href='edit_pass.jsp'>Change Security Password</a></td></tr></table></fieldset>");
                   
                
             
}catch(Exception e) { out.println(e);}

%>

            
