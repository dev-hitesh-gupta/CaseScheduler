<%-- 
    Document   : listsupply
    Created on : Sep 3, 2014, 7:38:16 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>
<%


try{
	
	sql_stmnt= "SELECT * FROM "+request.getParameter("list")+"_court where crno like '%"+request.getParameter("search")+"%' or note like '%"+request.getParameter("search")+"%'";
	rs=s.executeQuery(sql_stmnt);
	
	while(rs.next())
	{
            sql_stmnt2= "SELECT srno FROM "+request.getParameter("list")+"_sync where crid = '"+rs.getString("crid")+"' order by srno desc";
                    rs2=s2.executeQuery(sql_stmnt2);
                   out.println("<hR>");
                    if(rs2.next())
                    {
                out.println("<CENTER><h3>"+rs.getString("crno")+"( UPTO SERIAL NO. "+rs2.getString("srno") +" )</h3></center>");
                    }
                    else
                    {
                    out.println("<CENTER><h3>"+rs.getString("crno")+"</h3></center>");
                        
                    }out.println("<p style='white-space: pre-wrap;'>"+rs.getString("note")+"</p>");
                
                
                    
	}
}catch(Exception e) { out.println(e);}
%>




           
