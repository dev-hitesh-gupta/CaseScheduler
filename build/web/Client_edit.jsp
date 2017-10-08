<%-- 
    Document   : Client_edit_invalid
    Created on : Aug 1, 2014, 12:38:19 PM
    Author     : Hitesh Gupta
--%>



            <%@include file="uphome.jsp" %>
            <script>
function validateForm() {
    var x = document.forms["clientform"]["pnam"].value;
    if (x==null || x=="") {
        alert("Client name must be filled out");
        return false;
    }
}
</script>
<form name="clientform" class="form" method=post action = "Edit_submit.jsp?clid=<%out.println(request.getParameter("clid"));%>" onsubmit="return validateForm()">
    <br>
    <center><h2 class="form">CLIENT FORM</h2></center>
    <br>
    <%
    if(request.getParameter("error")!=null)
    {
        out.println("<p style='color:red;'>*"+request.getParameter("error")+"</p>");
    }
    %>
<table>
    <tr> <%


try{
	
	
	sql_stmnt= "SELECT * FROM client_master where client_id like "+request.getParameter("clid");
	rs=s.executeQuery(sql_stmnt);
		if(rs.next())
                {
                    %><td><b>CLIENT NAME</b>>></td><td><input type="text" name=pnam value= "<%out.println(rs.getString("client_name"));%>"></td>
    </tr>
    <tr>
        <td><b>TH. ADV</b>>></td><td><input type="text" name=padd2 value= "<%out.println(rs.getString("refrence"));%>"></td>
    </tr>
    <tr>
        <td><b>ADDRESS</b>>></td><td><input type="text" name=padd1 value= "<%out.println(rs.getString("address1"));%>"></td>
        
    </tr>   
    <tr>
        <td><b>PIN</b>>></td><td><input type="text" name=pin value= "<%out.println(rs.getString("pin"));%>"></td>
        <td><b>CITY</b>>><select name="city"><option><%out.println(rs.getString("city"));%></option><%

try{
	
	
	sql_stmnt1= "SELECT * FROM city_master";
	//out.println(sql_stmnt);
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs1.next())
	{
            %><option><%out.println(rs1.getString("city"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
    </tr>
    <tr>
        <td><b>STATE</b>>></td><td><select name="state"><option><%out.println(rs.getString("state"));%></option><%

try{
	sql_stmnt1= "SELECT * FROM state_master";
	//out.println(sql_stmnt);
	rs1=s1.executeQuery(sql_stmnt1);
	while(rs1.next())
	{
            %><option><%out.println(rs1.getString("state"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></td>
    </tr>
    <tr>
        
        <td><b>MOBILE</b>>></td><td><input type="text" name=mbn value= "<%out.println(rs.getString("mbn"));%>"></td>
    </tr>
    <tr>
        <td><b>EMAIL</b>>></td><td><input type="text" name=email value= "<%out.println(rs.getString("email"));%>"></td>
    </tr>
     
</table>
    <br>
    <br>
    <center><input type="submit" name=btn value="Save it"></center>
</form>
<%
                    
                }
              
                
}catch(Exception e) { out.println(e);}

%>
            