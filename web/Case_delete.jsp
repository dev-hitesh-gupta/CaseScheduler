<%-- 
    Document   : case_delete
    Created on : Aug 4, 2014, 2:14:36 PM
    Author     : Hitesh Gupta
--%>
<%@include file="uphome.jsp" %>
<%

try{
    sql_stmnt="DELETE FROM case_master WHERE case_id="+request.getParameter("caid");
    int i=s.executeUpdate(sql_stmnt);
      response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid"));
}catch(Exception e) {response.sendRedirect("Client_detail.jsp?clid="+request.getParameter("clid")+"&error=you need to delete schedules first respectively to that cases ");}
%>
            