<%-- 
    Document   : Party_search
    Created on : Jul 27, 2014, 10:32:24 AM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %>
            <table class='customers'>
<%
try{
	
	sql_stmnt= "SELECT count(client_id) as clients FROM client_master where client_name like '%"+request.getParameter("search").toUpperCase()+"%' or mbn like '%"+request.getParameter("search").toUpperCase()+"%' or refrence like '%"+request.getParameter("search").toUpperCase()+"%' or client_id='"+request.getParameter("search")+"'";
	
	rs=s.executeQuery(sql_stmnt);
        sql_stmnt1= "SELECT count(client_id) as clients FROM client_master ";
	
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs.next()&&rs1.next())
	{
		out.println("<h3>"+rs.getString("clients")+" <b>Clients Search Out Of</b> "+rs1.getString("clients")+"</h3>");
	}
}catch(Exception e) { out.println(e);}

try{
	
	sql_stmnt= "SELECT * FROM client_master where client_name like '%"+request.getParameter("search").toUpperCase()+"%' or mbn like '%"+request.getParameter("search").toUpperCase()+"%' or refrence like '%"+request.getParameter("search").toUpperCase()+"%' or client_id='"+request.getParameter("search")+"'";
	
	rs=s.executeQuery(sql_stmnt);
        out.println("<tr><th class='customers'>CLIENT ID</th><th class='customers'>CLIENT NAME</th><th class='customers'>TH. ADV</th><th class='customers'>CITY</th><th class='customers'>PIN</th><th class='customers'>STATE</th><th class='customers'>MOBILE</th><th class='customers'>EMAIL</th></tr>");
		
	while(rs.next())
	{
		out.println("<tr><td class='customers'><a href=Client_detail.jsp?clid="+rs.getString("client_id")+">"+rs.getString("client_id")+"</td></a>");
		out.println("<td class='customers'>" + rs.getString("client_name") + "</td>");
                out.println("<td class='customers'>" + rs.getString("refrence") + "</td>");
                out.println("<td class='customers'>" + rs.getString("city") + "</td>");
                out.println("<td class='customers'>" + rs.getString("pin") + "</td>");
                out.println("<td class='customers'>" + rs.getString("state") + "</td>");
                out.println("<td class='customers'>" + rs.getString("mbn") + "</td>");
		out.println("<td class='customers'>"+ rs.getString("email")+ "</td></tr>");
	}
}catch(Exception e) { out.println(e);}
%>
</table>
<a href="Client_search.jsp">Search again</a>

           