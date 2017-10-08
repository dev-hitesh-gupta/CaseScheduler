<%-- 
    Document   : Client_form
    Created on : Jul 25, 2014, 1:04:44 PM
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
    <form name="clientform" class="form" method=post action = "Client_submit.jsp" onsubmit="return validateForm()">
        
                    
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
    <tr>
        <td><b>CLIENT NAME</b>>></td><td><input type="text" name=pnam ></td>
    </tr>
    <tr>
        <td><b>TH. ADV</b>>></td><td><input type="text" name=padd2 value= ""></td>
    </tr>
    <tr>
        <td><b>ADDRESS</b>>></td><td><input type="text" name=padd1 value= ""></td>
        </tr>   
    <tr>
        <td><b>PIN</b>>></td><td><input type="text" name=pin value= ""></td>
        <td><b>CITY</b>>><select name="city"><%

try{
	
	sql_stmnt= "SELECT * FROM city_master";
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("city"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
    </tr>
    <tr>
        <td><b>STATE</b>>></td><td><select name="state"><%

try{
	
	
	sql_stmnt= "SELECT * FROM state_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("state"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
    </tr>
    <tr>
     
        <td><b>MOBILE</b>>></td><td><input type="text" name=mbn value= ""></td>
    </tr>
    <tr>
        <td><b>EMAIL</b>>></td><td><input type="text" name=email value= ""></td>
    </tr>
     
</table>
    <br>
    <br>
    <center><input type="submit" name=btn value="Save it"></center>
</form>

            