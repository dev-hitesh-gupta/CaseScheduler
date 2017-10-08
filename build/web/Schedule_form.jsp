<%-- 
    Document   : Schedule_form
    Created on : Sep 11, 2014, 6:54:15 PM
    Author     : Hitesh Gupta
--%>



            <%@include file="uphome.jsp" %>
            <form method=post action = "Schedule_submit.jsp?caid=<%out.println(request.getParameter("caid"));%>&caseno=<%out.println(request.getParameter("caseno"));%>">
    
                <center><h2 class="form">SCHEDULES</h2></center>
                <%
    if(request.getParameter("error")!=null)
    {
        out.println("<p style='color:red;'>*"+request.getParameter("error")+"</p>");
    }
    %>
    
       
       <%out.println("<h3>Case id:"+request.getParameter("caid")+"</h3>");%>
       <%out.println("<h3>Case no:"+request.getParameter("caseno")+"</h3>");%>
         <%

try{
	
	sql_stmnt= "SELECT * FROM schedule_master where case_id = '"+request.getParameter("caid")+"'";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
        out.println("<table class='customers'><tr><th class='customers'>DATE</th><th class='customers'>REMARK</th></tr>");
	while(rs.next())
	{
            out.println("<tr><td class='customers'>"+rs.getString("date")+"</td><td class='customers'>"+rs.getString("remark")+"</td><td><a href='Schedule_delete.jsp?caid="+request.getParameter("caid")+"&caseno="+request.getParameter("caseno")+"&shid="+rs.getString("schedule_id")+"'>Delete</a></td></tr>");
	}
        
}catch(Exception e) { out.println(e);}
%>   
  
    
          
    <tr>
        <td class='customers'><input type="date" name=date value= ""></td>
        <td class='customers'><input type="text" name=remark value= ""></td>
    
        <td><input type="submit" name=btn value=Add></td>
    </tr>
</table>
</form>
            
