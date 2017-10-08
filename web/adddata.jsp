<%-- 
    Document   : adddata
    Created on : Sep 26, 2014, 8:07:26 PM
    Author     : Hitesh Gupta
--%>




            <%@include file="uphome.jsp" %>
            <%
    if(request.getParameter("error")!=null)
    {
        out.println("<p style='color:red;'>*"+request.getParameter("error")+"</p>");
    }
    %>
            <form method=post action = "citysubmit.jsp">
    
                <center><h2 class="form">CITIES</h2></center>
                
    
       
         <%

try{
	
	sql_stmnt= "SELECT * FROM city_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
        out.println("<table class='customers'><tr><th class='customers'>CITY</th></tr>");
	while(rs.next())
	{
            out.println("<tr><td class='customers'>"+rs.getString("city")+"</td><td><a href='citydelete.jsp?city="+rs.getString("city") +"'>Delete</a></td></tr>");
	}
        
}catch(Exception e) { out.println(e);}
%>   
  
    
          
    <tr>
        <td class='customers'><input type="city" name=city value= ""></td>
        
    
        <td><input type="submit" name=btn value=Add></td>
    </tr>
</table>
</form>
           <form method=post action = "statesubmit.jsp">
    
                <center><h2 class="form">STATE</h2></center>
                
    
       
         <%

try{
	
	sql_stmnt= "SELECT * FROM state_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
        out.println("<table class='customers'><tr><th class='customers'>STATE</th></tr>");
	while(rs.next())
	{
            out.println("<tr><td class='customers'>"+rs.getString("state")+"</td><td><a href='statedelete.jsp?state="+rs.getString("state") +"'>Delete</a></td></tr>");
	}
        
}catch(Exception e) { out.println(e);}
%>   
  
    
          
    <tr>
        <td class='customers'><input type="state" name=state value= ""></td>
        
    
        <td><input type="submit" name=btn value=Add></td>
    </tr>
</table>
</form>
           

<form method=post action = "typesubmit.jsp">
    
                <center><h2 class="form">CASE TYPE</h2></center>
                
    
       
         <%

try{
	
	sql_stmnt= "SELECT * FROM case_type_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
        out.println("<table class='customers'><tr><th class='customers'>CASE TYPE</th></tr>");
	while(rs.next())
	{
            out.println("<tr><td class='customers'>"+rs.getString("case_type")+"</td><td><a href='typedelete.jsp?type="+rs.getString("case_type") +"'>Delete</a></td></tr>");
	}
        
}catch(Exception e) { out.println(e);}
%>   
  
    
          
    <tr>
        <td class='customers'><input type="type" name=type value= ""></td>
        
    
        <td><input type="submit" name=btn value=Add></td>
    </tr>
</table>
</form>
           
