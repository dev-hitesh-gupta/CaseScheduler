<%-- 
    Document   : completelist_search
    Created on : Sep 18, 2014, 7:44:35 PM
    Author     : Hitesh Gupta
--%>



<%@include file="uphome.jsp" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%


try{
     Date today = new Date();
     Date tomorrow = new Date(today.getTime() + (1000 * 60 * 60 * 24));
     String modifiedDate;
     modifiedDate = new SimpleDateFormat("yyyy-MM-dd").format(tomorrow);
     
    
        sql_stmnt= "SELECT * FROM sync_record where sync_date = '"+modifiedDate+"'";
        rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            sql_stmnt1= "SELECT * FROM "+rs.getString("file_type")+"_court";
            rs1=s1.executeQuery(sql_stmnt1);
            
          
        while(rs1.next())
	{
                sql_stmnt2= "SELECT crno,srno,csno FROM "+rs.getString("file_type")+"_sync where csno like '%"+request.getParameter("search")+"%' and crid = '"+rs1.getString("crid")+"' group by csno";
                
                rs2=s2.executeQuery(sql_stmnt2);
		if(rs2.next())
                {
                    sql_stmnt3= "SELECT srno FROM "+rs.getString("file_type") +"_sync where crid = '"+rs1.getString("crid")+"' order by srno desc";
                    rs3=s3.executeQuery(sql_stmnt3);
                   out.println("<hR>");
                    if(rs3.next())
                    {
                out.println("<CENTER><h3>"+rs1.getString("crno")+"("+rs.getString("name")+")( UPTO SERIAL NO. "+rs3.getString("srno") +" )</h3></center>");
                    }
                    else
                    {
                    out.println("<CENTER><h3>"+rs1.getString("crno")+"("+rs.getString("name")+")</h3></center>");
                        
                    }out.println("<CENTER><p style='white-space: pre-wrap;'>"+rs1.getString("note")+"</p></CENTER>");
                out.println("<table class='customers'>");
                out.println("<tr><th class='customers'>SR NO</th><th class='customers'>CAUSE LIST MATERIAL</th></tr>");
                rs2.previous();
                while(rs2.next())
                {
		out.println("<tr><td class='customers'>"+rs2.getString("srno")+"</td>");
                String csno=rs2.getString("csno");
                String search= request.getParameter("search");
                int h= csno.indexOf(search.toUpperCase());
                int j= search.length();
                String a=csno.substring(0,h);
                String b=csno.substring(h,(h+j+1));
                String d=csno.substring(h+j+1);
		out.println("<td style='white-space: pre-wrap;' class='customers'>"+a+"<b>"+b+"</b>"+d+"</td></tr>");
                }
                out.println("</table>");
                }
        }
	}
}catch(Exception e) { out.println(e);}
%>


           