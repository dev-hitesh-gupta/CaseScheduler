<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>


            <%@include file="uphome.jsp" %>
<%


try{
	
        
	
	sql_stmnt="update case_master set party_name_1='"+request.getParameter("pnam1")+"',party_name_2='"+request.getParameter("pnam2")+"',case_no='"+request.getParameter("number")+"',case_type='"+request.getParameter("type")+"',case_year='"+request.getParameter("year")+"' where case_id="+request.getParameter("caid")+"";
	int i=s.executeUpdate(sql_stmnt);
        
        response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid"));
}catch(Exception e) {response.sendRedirect("Case_edit.jsp?clid="+request.getParameter("clid")+"&error=you may fill form correctly");}

%>
            