<%-- 
    Document   : uplogin
    Created on : Aug 24, 2014, 8:56:27 AM
    Author     : Hitesh Gupta
--%>
<%@page import = "java.sql.*;"%>
<%String url = "jdbc:mysql://localhost:3306/";
		  String dbName = "cs";
		  String driver = "com.mysql.jdbc.Driver";
		  String userName = "root"; 
		  String password = "30121993";
                          
Statement s;
ResultSet rs;
Class.forName(driver);
	Connection c = DriverManager.getConnection(url+dbName,userName,password);
	s=c.createStatement();

	String sql_stmnt;
                  %>
<html>
    
        
    <head>
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
        <title>CASE SCHEDULER</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body bgcolor="#000000">

    <%@include file="Header.jsp"%>
    <marquee class="font">WELCOME to case scheduler please login</marquee>
   <div id="content" style="background:-webkit-radial-gradient(#999999,#000000);background: -moz-radial-gradient(#999999,#000000);background: radial-gradient(#999999,#000000);border:5px outset #ffffff;margin:auto;height:85%;width:99%;float:left;">
   
       <div id="content" style="background-color: white;border:2px solid black;margin-left:25%;margin-top:8%;height:60%;width:50%;float:left;">