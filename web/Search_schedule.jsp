<%-- 
    Document   : Party_search
    Created on : Jul 27, 2014, 10:32:24 AM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %>
            <table class='customers'>
<%
try{
	
	sql_stmnt= "SELECT count(schedule_id) as schedules FROM schedule_master s,case_master c where date like '"+request.getParameter("search")+"' and c.case_id=s.case_id";
	
	rs=s.executeQuery(sql_stmnt);
        sql_stmnt1= "SELECT count(schedule_id) as schedules FROM schedule_master ";
	
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs.next()&&rs1.next())
	{
		out.println("<h3>"+rs.getString("schedules")+" <b>Cases Search Out Of</b> "+rs1.getString("schedules")+"</h3>");
	}
}catch(Exception e) { out.println(e);}


try{
	
	sql_stmnt= "SELECT s.remark,s.date,c.case_id,c.case_type,c.case_no,c.case_year FROM schedule_master s,case_master c where date like '"+request.getParameter("search")+"' and c.case_id=s.case_id";
	
	rs=s.executeQuery(sql_stmnt);
        out.println("<tr><th class='customers'>CASE ID</th><th class='customers'>CASE NO</th><th class='customers'>REMARK</th></tr>");
		
	while(rs.next())
	{
		out.println("<tr><td class='customers'><a href=Schedule_form.jsp?caid="+rs.getString("c.case_id")+"&caseno="+rs.getString("c.case_type")+"-"+rs.getString("c.case_no")+"-"+rs.getString("c.case_year")+ ">"+rs.getString("c.case_id")+"</td></a>");
                out.println("<td class='customers'><a href='http://phhc.gov.in:8080/enq_caseno.php?var1="+rs.getString("c.case_type")+"&var2="+rs.getString("c.case_no")+"&var3="+rs.getString("c.case_year")+"'>"+rs.getString("c.case_type")+"-"+rs.getString("c.case_no")+"-"+rs.getString("c.case_year")+ "</a></td>");
                out.println("<td class='customers'>" + rs.getString("s.remark") + "</td></tr>");
	}
}catch(Exception e) { out.println(e);}
%>
</table>
<a href="Client_search.jsp">Search again</a>

           