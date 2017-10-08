<%-- 
    Document   : Party_search
    Created on : Jul 27, 2014, 10:32:24 AM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %>
            <table class='customers'>
<%
try{
	
	sql_stmnt= "SELECT count(case_id) as cases FROM case_master where case_no like '%"+request.getParameter("number")+"%' and case_type like '%"+request.getParameter("type")+"%' and case_year like '%"+request.getParameter("year")+"%'";
	
	rs=s.executeQuery(sql_stmnt);
        sql_stmnt1= "SELECT count(case_id) as cases FROM case_master ";
	
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs.next()&&rs1.next())
	{
		out.println("<h3>"+rs.getString("cases")+" <b>Cases Search Out Of</b> "+rs1.getString("cases")+"</h3>");
	}
}catch(Exception e) { out.println(e);}
try{
	
	sql_stmnt= "SELECT * FROM case_master where case_no like '%"+request.getParameter("number")+"%' and case_type like '%"+request.getParameter("type")+"%' and case_year like '%"+request.getParameter("year")+"%'";
	
	rs=s.executeQuery(sql_stmnt);
        out.println("<tr><th class='customers'>CLIENT ID</th><th class='customers'>CASE ID</th><th class='customers'>CASE NO</th><th class='customers'>PETIONER V/S RESPONDENT</th></tr>");
		
	while(rs.next())
	{
		out.println("<tr><td class='customers'><a href=Client_detail.jsp?clid="+rs.getString("client_id")+">"+rs.getString("client_id")+"</td></a>");
		out.println("<td class='customers'><a href=Schedule_form.jsp?caid="+rs.getString("case_id")+"&caseno="+rs.getString("case_type")+"-"+rs.getString("case_no")+"-"+rs.getString("case_year")+ ">" + rs.getString("case_id") + "</td></a>");
                out.println("<td class='customers'><a href='http://phhc.gov.in:8080/enq_caseno.php?var1="+rs.getString("case_type")+"&var2="+rs.getString("case_no")+"&var3="+rs.getString("case_year")+"'>"+rs.getString("case_type")+"-"+rs.getString("case_no")+"-"+rs.getString("case_year")+ "</a></td>");
                out.println("<td class='customers'>" + rs.getString("party_name_1") + " V/S " + rs.getString("party_name_2") + "</td></tr>");
                
	}
}catch(Exception e) { out.println(e);}
%>
</table>
<a href="Client_search.jsp">Search again</a>

           