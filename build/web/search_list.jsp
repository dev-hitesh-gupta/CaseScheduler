<%-- 
    Document   : search_list
    Created on : Sep 3, 2014, 7:49:57 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>
<%


try{
	
	sql_stmnt1= "SELECT * FROM "+request.getParameter("list")+"_court";
	rs1=s1.executeQuery(sql_stmnt1);
	
	while(rs1.next())
	{
                sql_stmnt= "SELECT crno,srno,csno FROM "+request.getParameter("list")+"_sync where csno like '%"+request.getParameter("search")+"%' and crid = '"+rs1.getString("crid")+"'";
                rs=s.executeQuery(sql_stmnt);
		if(rs.next())
                {    
                    sql_stmnt2= "SELECT srno FROM "+request.getParameter("list")+"_sync where crid = '"+rs1.getString("crid")+"' order by srno desc";
                    rs2=s2.executeQuery(sql_stmnt2);
                   out.println("<hR>");
                    if(rs2.next())
                    {
                out.println("<CENTER><h3>"+rs1.getString("crno")+"( UPTO SERIAL NO. "+rs2.getString("srno") +" )</h3></center>");
                    }
                    else
                    {
                    out.println("<CENTER><h3>"+rs1.getString("crno")+"</h3></center>");
                        
                    }out.println("<CENTER><p style='white-space: pre-wrap;'>"+rs1.getString("note")+"</p></CENTER>");
                out.println("<table class='customers'>");
                out.println("<tr><th class='customers'>SR NO</th><th class='customers'>CAUSE LIST MATERIAL</th></tr>");
                
               rs.previous();
                while(rs.next())
                {
		out.println("<tr><td class='customers'>"+rs.getString("srno")+"</td>");
                String csno=rs.getString("csno");
                String search=request.getParameter("search");
                int h= csno.indexOf(search.toUpperCase());
                int j= search.length();
                String a=csno.substring(0,h);
                String b=csno.substring(h,(h+j+1));
                String c=csno.substring(h+j+1);
		out.println("<td class='customers' style='white-space: pre-wrap;'>"+a+"<b>"+b+"</b>"+c+"</td></tr>");
                }
                
                out.println("</table>");
                }
                
	}
}catch(Exception e) { out.println(e);}
%>

