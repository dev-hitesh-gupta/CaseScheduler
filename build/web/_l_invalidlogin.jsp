<%-- 
    Document   : invalidlogin
    Created on : Aug 24, 2014, 9:04:02 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp"%>

<div id="content" style="background-color: white;border-right:2px solid black;margin-top:2.5%;margin-left: 2.5%;height:90%;width:45%;float:left;">
    <h1 class="font" style="text-shadow: 5px 5px 5px #FF6666; color:red;" >YOU<br>ENTER<br>A INVALID<br>ID</h1>         
</div> 
<div id="content" style="background-color: white;border-left:2px solid black;margin-top:2.5%;height:90%;width:45%;float:left;padding-left: 2%;">
    <form method=post action = "[l]checklogin.jsp">
        <table>  
            <br>
            <br>
            <br>
            <tr><td><h3 class="font" style="color:#000000;display: inline;"> Username:</h3></td><td><input type="text" name="usr" ></td></tr>
            <tr><td><h3 class="font" style="color:#000000;display: inline;"> Password:</h3></td><td><input type="password" name="pwd" ></td></tr>
            <tr><td></td><td align="right"><input type="submit" name=btn value=login></td></tr>
            <tr><td></td><td><a href="[l]forget.jsp" style="color:black;">Forget Password</a></td></tr>
        </table>
    </form>               
</div> 
<%@include file="downlogin.jsp"%> 
