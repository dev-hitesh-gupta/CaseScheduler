<%-- 
    Document   : account
    Created on : Sep 1, 2014, 7:00:04 PM
    Author     : Hitesh Gupta
--%>


<%@include file="uphome.jsp"%>
<script>
function validateForm() {
    var x = document.forms["accountform"]["name"].value;
    var y = document.forms["accountform"]["usr"].value;
    var z = document.forms["accountform"]["pass"].value;
    var w = document.forms["accountform"]["ans"].value;
    if (x==null || x=="") {
        alert("User's name must be filled out");
        return false;
    }
    if (y==null || y=="") {
        alert("username must be filled out");
        return false;
    }
    if (z==null || z=="") {
        alert("password must be filled out");
        return false;
    }
    if (w==null || w=="") {
        alert("Answer must be filled out");
        return false;
    }
}
</script>
<form name="accountform" class="form" method=post action = "accountsubmit.jsp" onsubmit="return validateForm()">
        <center><h2 class="form" >ACCOUNT FORM</h2></center>
    
    <%
    if(request.getParameter("error")!=null)
    {
        out.println("<p style='color:red;'>*"+request.getParameter("error")+"</p>");
    }
    %>
  <table>
  <tr>
      <td class="form"><b>Name:</b></td><td><input type="text" name=name value= ""></td>
    </tr>
    <tr>
        <td class="form"><b>Username:</b></td><td><input type="text" name=usr value= ""></td>
        </tr> 
    <tr>
        <td class="form"><b>Password:</b></td><td><input type="password" name=pass value= ""></td>
    </tr>   
    
    <tr>
        <td class="form"><b>Mobile:</b></td><td><input type="text" name=mbn value= ""></td>
    </tr>
    <tr>
        <td class="form"><b>Email:</b></td><td><input type="text" name=email value= ""></td>
    </tr>
    <tr>
        <td class="form"><b>Question:</b></td><td><select name="ques"><%

try{
	
	
	sql_stmnt= "SELECT * FROM question_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("question"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td></tr>
    <tr><td class="form"><b>Answer:</b></td><td><input type="text" name=ans value= ""></td></tr>
    <tr><td class="form"><b>Account Type:</b></td><td><select name="type"><option value="2">CLERK</option><option value="3">JUNIOR</option></select></td></tr>
    </table>
    <br><br>
    <center><input  type="submit" name=btn value="Create Account"></center>
    

    
    
 
</form>

