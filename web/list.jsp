<%-- 
    Document   : o_m
    Created on : Sep 2, 2014, 9:48:19 PM
    Author     : Hitesh Gupta
--%>

<%@include file="uphome.jsp" %>

<%


try{
	
	sql_stmnt1= "SELECT * FROM "+request.getParameter("list")+"_court";
        
	rs1=s1.executeQuery(sql_stmnt1);
	
	while(rs1.next())
	{
                sql_stmnt= "SELECT crno,srno,csno,case_no,case_type,case_year FROM "+request.getParameter("list")+"_sync,case_master where csno like concat('%',case_type,'-',case_no,'-',case_year,'%') and crid = '"+rs1.getString("crid")+"' group by csno";
                
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
                out.println("<tr><th class='customers'>SR NO</th><th class='customers'>CASE NO</th><th class='customers'>CAUSE LIST MATERIAL</th></tr>");
                rs.previous();
                while(rs.next())
                {
		out.println("<tr><td class='customers'>"+rs.getString("srno")+"</td>");
                out.println("<td class='customers'><a href='http://phhc.gov.in:8080/enq_caseno.php?var1="+rs.getString("case_type")+"&var2="+rs.getString("case_no")+"&var3="+rs.getString("case_year")+"'>"+rs.getString("case_type")+"-"+rs.getString("case_no")+"-"+rs.getString("case_year")+ "</a></td>");
                String csno=rs.getString("csno");
                String search=rs.getString("case_type")+"-"+rs.getString("case_no")+"-"+rs.getString("case_year");
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
}catch(Exception e) { out.println(e);}
%>


           