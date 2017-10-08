<%-- 
    Document   : Client_form
    Created on : Jul 25, 2014, 1:04:44 PM
    Author     : Hitesh Gupta
--%>



            <%@include file="uphome.jsp" %>
            <script>
function validateForm() {
    var x = document.forms["passform"]["ans"].value;
    if (x==null || x=="") {
        alert("Answer must be filled out");
        return false;
    }
}
</script>
            <form name='passform' method=post action = "ques_submit.jsp" onsubmit="return validateForm()">
    
<table>
    <tr>
        <td>Question:</td><td><select name="ques"><%
Statement s;
ResultSet rs;
try{
	Class.forName(driver);
	Connection c = DriverManager.getConnection(url+dbName,userName,password);
	s=c.createStatement();

	String sql_stmnt;
	
	sql_stmnt= "SELECT * FROM question_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("question"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
            %></select></td>
        <td>Answer:</td><td><input type="text" name=ans value= ""></td></tr>
     <tr>
        <td></td>
        <td><input type="submit" name=btn value=Save><input type="reset" name=btn value=clear></td>
    </tr>
</table>
</form>
           
            
