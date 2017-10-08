<%-- 
    Document   : accountlist
    Created on : Sep 1, 2014, 8:30:56 PM
    Author     : Hitesh Gupta
--%>

 <%@include file="uphome.jsp"%>
 <table class="customers"> 
     <tr><th class="customers">username</th><th class="customers">name</th><th class="customers">email</th></tr>    
 <%

try{
	
	
	sql_stmnt= "SELECT * FROM account_master where type = '2' or type = '3' ";
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
		out.println("<tr><td class='customers'><a href=accountshow.jsp?usr="+rs.getString("username")+">"+rs.getString("username")+"</a></td>");
		out.println("<td <td class='customers'>" + rs.getString("name") + "</td>");
		out.println("<td <td class='customers'>"+ rs.getString("email")+ "</td>");
                out.println("<td><a href=accountdelete.jsp?usr="+rs.getString("username")+">Delete</a></td></tr>");
	}
}catch(Exception e) { out.println(e);}
%>
 </table>

