<%-- 
    Document   : invalidforget
    Created on : Aug 24, 2014, 9:46:04 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp"%>

<div id="content" style="background-color: white;border-right:2px solid black;margin-top:2.5%;margin-left: 2.5%;height:90%;width:35%;float:left;">
    <h1 class="font" style="text-shadow: 5px 5px 5px #FF6666; color:red;" >INVALID<br>SECURITY<br>QUESTION<BR>& ANSWER</h1>         
</div> 
<div id="content" style="background-color: white;border-left:2px solid black;margin-top:2.5%;height:90%;width:55%;float:left;padding-left: 2%;">
    <form method=post action = "[l]forgetcheck.jsp">
        <br><br><br>
        <table>
        <tr>
        <td style="color:#000000;">Username:</td><td><input type="text" name=usr value= ""></td>
        </tr> 
        <tr>
        <td style="color:#000000;">Question:</td><td><select name="ques"><%
        

try{
	
	
	sql_stmnt= "SELECT * FROM question_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("question"));%></option>  <%
	}
        }catch(Exception e) { out.println(e);}
            %></select></td>
        </tr><tr><td style="color:#000000;">Answer:</td><td><input type="text" name=ans value= ""></td></tr>
        <tr>
        <td></td>
        <td><input type="submit" name=btn value=Submit></td>
        </tr>
</table>
</form>           
</div> 
<%@include file="downlogin.jsp"%> 

