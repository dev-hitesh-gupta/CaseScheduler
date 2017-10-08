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
            <form name="caseform" class="form" method=post action = "edit_submit_case.jsp?caid=<%out.println(request.getParameter("caid"));%>&clid=<%out.println(request.getParameter("clid"));%>" onsubmit="return validateForm()">
                <%


try{
	
	
	sql_stmnt="SELECT * FROM case_master where case_id like "+request.getParameter("caid");
	rs=s.executeQuery(sql_stmnt);
		if(rs.next())
                {
                    %>
    <center><h2 class="form" >EDIT CASE</h2></center>
        <table>
       <%out.println("<tr><td><b>Client id:"+request.getParameter("clid")+"</b></td></tr>");%>
            
  
    <tr>
        <td><b>CASE NUMBER</b>>></td><td><select name="type"><option><%out.println(rs.getString("case_type"));%></option><%

try{
	
	
	sql_stmnt1= "SELECT * FROM case_type_master";

	rs1=s1.executeQuery(sql_stmnt1);
	while(rs1.next())
	{
            %><option><%out.println(rs1.getString("case_type"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select><input type="text" name=number value= "<%out.println(rs.getString("case_no"));%>"><select name="year"><option><%out.println(rs.getString("case_year"));%></option><%

try{
	
	sql_stmnt1= "SELECT * FROM year_master";
	//out.println(sql_stmnt);
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs1.next())
	{
            %><option><%out.println(rs1.getString("year"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
    </tr>   
    <tr>
        <td><b>PETITIONER V/S RESPONDENT</b>>></td><td><input type="text" name=pnam1 value= "<%out.println(rs.getString("party_name_1"));%>">V/S<input type="text" name=pnam2 value= "<%out.println(rs.getString("party_name_2"));%>"></td>
    </tr>
    <tr>
        
    <center><td><input type="submit" name=btn value=Save></td></center>
    </tr>
</table>
</form><%
                    
                }
              
                
}catch(Exception e) { out.println(e);}

%>
            