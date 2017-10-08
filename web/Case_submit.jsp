<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>


   <%@include file="uphome.jsp" %>
 
<%


try{
	sql_stmnt1="select * from case_master where case_type = '"+request.getParameter("type").toUpperCase()+"' and case_no = '"+request.getParameter("number").toUpperCase()+"' and case_year = '"+request.getParameter("year").toUpperCase()+"'";
        rs=s1.executeQuery(sql_stmnt1);
        if((rs.next()))
        {
            response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid")+"&error=you already have this case in client id "+rs.getString("client_id")+"");
        }
      
        else
        {
	sql_stmnt="insert into case_master (client_id,case_type,case_no,case_year,party_name_1,party_name_2)values("+request.getParameter("clid")+",'"+request.getParameter("type").toUpperCase()+"','"+request.getParameter("number").toUpperCase()+"','"+request.getParameter("year").toUpperCase()+"','"+request.getParameter("pnam1").toUpperCase()+"','"+request.getParameter("pnam2").toUpperCase()+"')";
	int i=s.executeUpdate(sql_stmnt);
        
        response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid"));
        }
}catch(Exception e) {response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid")+"&error=you may not fill form correctly");}

%>

            