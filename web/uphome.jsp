<%-- 
    Document   : uphome
    Created on : Aug 24, 2014, 9:24:11 PM
    Author     : Hitesh Gupta
--%>
<%@page import = "java.sql.*"%>
<%String url = "jdbc:mysql://localhost:3306/";
		  String dbName = "cs";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "30121993";
                  Statement s;
                  ResultSet rs;
                  String sql_stmnt;
                  Statement s3;
                  ResultSet rs3;
                  String sql_stmnt3;
                  Statement s2;
                  ResultSet rs2;
                  String sql_stmnt2;
                  Statement s1;
                  ResultSet rs1;
                  String sql_stmnt1;
                  Class.forName(driver);
                  Connection conn = DriverManager.getConnection(url+dbName,userName,password);
                  s=conn.createStatement();
                  s1=conn.createStatement();
                  s2=conn.createStatement();
                  s3=conn.createStatement();
                  %>
<%
    if(session.getAttribute("id")==null)
   {
        response.sendRedirect("[l]login.jsp");
    }
%>

<html>
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <title>CASE SCHEDULER</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        
<script type="text/javascript" src="print.js"></script>
    </head>
    <body bgcolor="#000000">

        <%@include file="Header.jsp"%>
        
            <marquee class="font">WELCOME to case scheduler</marquee>
            
            
            
            <div id="menu" style="background-color:#000000;margin:auto;border-width: 5px;border-style: outset;border-color: #ffffff;  height:100%;width:22.50%;float:left;">
                <form action="search_list.jsp">
                    <ul class="list">
                        <%

try{
	
        sql_stmnt= "SELECT * FROM account_master where username = '"+session.getAttribute("id")+"' ";
	rs=s.executeQuery(sql_stmnt);
	rs.next();
        if(new String(rs.getString("type")).equals("1"))
        {
            %><%@include file="admin.jsp"%><%   
        }
        else if(new String(rs.getString("type")).equals("2"))
        {
             %><%@include file="clerk.jsp"%><%   
        }
        else if(new String(rs.getString("type")).equals("3"))
        {
             %><%@include file="junior.jsp"%><%   
        }
        
}catch(Exception e) { out.println(e);}
%>
                        <li class="head"><a class="head" href="#"><span>Search From Causelist</span></a></li>
                        <li><input type="text" name="search"></li>
                        <li><select name="list">
                                <optgroup label="REGULAR MAIN">
                            <option value="gsb">regular (sb)</option>
                            <option value="gdb">regular (db)</option>
                                </optgroup>
                                <optgroup label="MAIN">
                            <%

try{
	
	sql_stmnt= "SELECT * FROM sync_record where file_type like '%_m' ";
	
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option value="<%out.print(rs.getString("file_type"));%>"><%out.print(rs.getString("name")+"("+rs.getString("sync_date")+")");%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%>
                                </optgroup>
                                <optgroup label="SUPPLYMENTARY">
                            <%
try{
	
	sql_stmnt= "SELECT * FROM sync_record where file_type like '%_s' ";
	
	rs=s.executeQuery(sql_stmnt);
	while(rs.next())
	{
            %><option value="<%out.print(rs.getString("file_type"));%>"><%out.print(rs.getString("name")+"("+rs.getString("sync_date")+")");%></option>  <%
	}
}catch(Exception e) { out.println(e);}
%>
                                </optgroup>
                            </select></li>
                            <li><input class="menu" type="submit" name=btn value="Search list"><input class="menu" type="submit" name=btn value="SEARCH COMPLETE LIST" formaction="completelist_search.jsp"></li>
                        <li><input class="menu" type="submit" name=btn value="Auto list" formaction="list.jsp"><input class="menu" type="submit" name=btn value="Show note" formaction="listnote.jsp"></li>
                        <li><input class="menu" type="submit" name=btn value="COMPLETE LIST" formaction="completelist.jsp"></li>
                        
                            
                        
                    
                    
                    </ul>
                                

<input type="button"   onClick="printdiv('div_print');" value=" Print ">

                 </form>
                 
                 
                 
                 
                 </div> 
             
                <div id="div_print" style="background:#ffffff ;margin:auto;height:100%;width:75.50%;border-width: 5px;border-style: outset;border-color: #ffffff; float:left;overflow:scroll; ">