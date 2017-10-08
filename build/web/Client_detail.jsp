<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>
<%@include file="uphome.jsp" %>
<script>
function validateForm() {
    var x = document.forms["caseform"]["number"].value;
    var y = document.forms["caseform"]["pnam1"].value;
    var z = document.forms["caseform"]["pnam2"].value;
    if (x==null || x=="") {
        alert("CASE NO. must be filled out");
        return false;
    }
    if (y==null || y=="") {
        alert("PETITIONER NAME must be filled out");
        return false;
    }
    if (z==null || z=="") {
        alert("RESPONDENT NAME must be filled out");
        return false;
    }
}
</script>
<center><h2 class="form" >CLIENT DETAIL</h2></center>
<%
    if(request.getParameter("error")!=null)
    {
        out.println("<p style='color:red;'>*"+request.getParameter("error")+"</p>");
    }
    %>

<%


try{
	
	
        sql_stmnt1= "SELECT * FROM case_master where client_id like "+request.getParameter("clid")+"";
	sql_stmnt= "SELECT * FROM client_master where client_id like "+request.getParameter("clid")+"";
	rs=s.executeQuery(sql_stmnt);
        rs1=s1.executeQuery(sql_stmnt1);
		if(rs.next())
                {
                    out.println("<table class='detail'><tr><td class='detail'><b>Client id:</td></b><td>"+rs.getString("client_id")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>Client Name:</td></b><td>"+rs.getString("client_name")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>TH. ADV:</td></b><td>"+rs.getString("refrence")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>Address:</td></b><td>"+rs.getString("address1")+"</td></tr>");
                    
                    out.println("<tr><td class='detail'><b>City:</td></b><td>"+rs.getString("city")+"</td>");
                    out.println("<td class='detail'><b>State:</td></b><td>"+rs.getString("state")+"</td></tr>");
                    out.println("<tr><td class='detail'><b>pin:</td></b><td>"+rs.getString("pin")+"</td></tr>");
                    out.println("<td class='detail'><b>Mobile:</td></b><td>"+rs.getString("mbn")+"</td>");
                    out.println("<tr><td class='detail'><b>Email:</td></b><td>"+rs.getString("email")+"</td></tr>");
                    out.println("<tr><td class='detail'></td><td><a href=Client_edit.jsp?clid="+rs.getString("client_id")+">Edit</a></td>");
                    out.println("<td><a href=Client_delete.jsp?clid="+rs.getString("client_id")+">Delete</a></td></tr></table>");
                  out.println("<table class='customers'><tr class='detail'><th class='customers'>CASE ID</th><th class='customers'>PETITIONER V/S RESPONDANT</th><th class='customers'>CASE NUMBER</th></tr>");
		  
                    while(rs1.next())
	{
		
                out.println("<tr><td class='customers'><a href='Schedule_form.jsp?caid=" + rs1.getString("case_id") + "&caseno="+rs1.getString("case_type")+"-"+ rs1.getString("case_no")+"-"+rs1.getString("case_year")+"'>" + rs1.getString("case_id") + "</a></td>");
		out.println("<td class='customers'>" + rs1.getString("party_name_1") +" V/S "+ rs1.getString("party_name_2") + "</td>");
                
		out.println("<td class='customers'><a href='http://phhc.gov.in:8080/enq_caseno.php?var1="+rs1.getString("case_type")+"&var2="+rs1.getString("case_no")+"&var3="+rs1.getString("case_year")+"'>"+rs1.getString("case_type")+"-"+rs1.getString("case_no")+"-"+rs1.getString("case_year")+ "</a></td>");
                out.println("<td><a href=Case_delete.jsp?clid="+rs.getString("client_id")+"&caid="+rs1.getString("case_id")+">Delete</a></td>");
                out.println("<td><a href=Case_edit.jsp?clid="+rs.getString("client_id")+"&caid="+rs1.getString("case_id")+">Edit</a><td></tr>");
              
               // s3.close();
	}
                    }
                
}catch(Exception e) { out.println(e);}

%><form name="caseform" class="form" method=post action = "Case_submit.jsp?clid=<%out.println(request.getParameter("clid"));%>" onsubmit="return validateForm()">
   
   
       
            
  
    <tr><td class='customers'></td>
        <td class='customers'><input type="text" name=pnam1 value= "">V/S<input type="text" name=pnam2 value= ""></td>
       
        <td class='customers'><select name="type"><%

try{
	

	
	sql_stmnt= "SELECT * FROM case_type_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("case_type"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select>
        <input type="text" name=number value= "">
        <select name="year"><%

try{
	
	sql_stmnt= "SELECT * FROM year_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("year"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
     
    
   
   
       <td><input class="form" type="submit" name=btn value="Add"></td>
    </tr>
    
        
   
</table>
   
</form>
            