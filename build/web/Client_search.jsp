<%-- 
    Document   : Client_search
    Created on : Jul 29, 2014, 3:27:54 PM
    Author     : Hitesh Gupta
--%>



            <%@include file="uphome.jsp" %>
            <form class="form" method=post action = "Search_client.jsp">
        CLIENT SEARCH<input type="text" name="search">
        <h4>Search by Client Name,Mobile no.,Client id,Through Advocate</h4>
        <input type="submit" name=btn value=Search>
        </form>
            <br>
            <form class="form" method=post action = "Search_case.jsp">
                <table>
        <tr>
            <td>CASE NUMBER</td><td><select name="type"><option></option><%

try{
	
	
	sql_stmnt= "SELECT * FROM case_type_master";
	//out.println(sql_stmnt);
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option><%out.println(rs.getString("case_type"));%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%></select></td>
        <td><input type="text" name="number" value= ""></td>
        <td><select name="year"><option></option><%

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
    </tr> </table>
        <h4>Search by Case number</h4>
        <input type="submit" name=btn value=Search>
        </form>
            <br>
            <form class="form" method=post action = "Search_schedule.jsp">
        SCHEDULE SEARCH<input type="date" name="search">
        <br>
        <h4>Search by Date</h4>
        <br>
        <input type="submit" name=btn value=Search>
        </form>
    
            