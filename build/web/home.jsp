<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>
<%@page import = "java.text.SimpleDateFormat"%>
<%@page import = "java.util.Date"%>
      <%@include file="uphome.jsp"%>
      
          <center><h2 class="form">WELCOME TO SCHEDULER</h2></center>
      <%

try{
	
	sql_stmnt1= "SELECT * FROM case_master";
        rs1=s1.executeQuery(sql_stmnt1);
        Date today = new Date();
        Date tomorrow = new Date(today.getTime() + (6*1000 * 60 * 60 * 24));
        String modifiedDate,modifiedDate1;
        modifiedDate = new SimpleDateFormat("yyyy-MM-dd").format(today);
        modifiedDate1 = new SimpleDateFormat("yyyy-MM-dd").format(tomorrow);
        out.println("<ul>");
        while(rs1.next())
        {   
            
	sql_stmnt= "SELECT * FROM schedule_master where case_id = '"+rs1.getString("case_id")+"' and schedule_master.date between '"+modifiedDate+"' and '"+modifiedDate1+"'";
	rs=s.executeQuery(sql_stmnt);
        if(rs.next())
        {
            out.println("<li><h4><b>"+rs1.getString("case_id")+":<a href='http://phhc.gov.in:8080/enq_caseno.php?var1="+rs1.getString("case_type")+"&var2="+rs1.getString("case_no")+"&var3="+rs1.getString("case_year")+"'>"+rs1.getString("case_type")+"-"+rs1.getString("case_no")+"-"+rs1.getString("case_year")+ "</a></b></h4></li>");
        
        rs.previous();
        out.println("<ul type='square'>");
	while(rs.next())
	{
           
            out.println("<li><b>"+rs.getString("date")+"</b> >> "+rs.getString("remark")+"</li>");
	}
        out.println("</ul>");
        }
        }
        out.println("</ul>");
}catch(Exception e) { out.println(e);}
%> 
     