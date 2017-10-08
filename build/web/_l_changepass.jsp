<%-- 
    Document   : changepass
    Created on : Aug 24, 2014, 9:49:51 AM
    Author     : Hitesh Gupta
--%>

<%@include file="uplogin.jsp"%>
<script>
function validateForm() {
    var x = document.forms["passform"]["pass"].value;
    if (x==null || x=="") {
        alert("Password must be filled out");
        return false;
    }
}
</script>

<div id="content" style="background-color: white;border-right:2px solid black;margin-top:2.5%;margin-left: 2.5%;height:90%;width:35%;float:left;">
    <h1 class="font" style="text-shadow: 5px 5px 5px #66A366; color:#006600;" >CREATE<br>NEW<br>PASSWORD</h1>         
</div> 
<div id="content" style="background-color: white;border-left:2px solid black;margin-top:2.5%;height:90%;width:55%;float:left;padding-left: 2%;">
    
    <%out.println("<form name='passform' method=post action ='[l]changepasssubmit.jsp?id="+request.getParameter("id")+"' onsubmit='return validateForm()'>");%>
    
<table>
     
    <tr>
        <td>New Password:</td><td><input type="password" name=pass value= ""></td>
        
    </tr>   
     <tr>
        <td></td>
        <td><input type="submit" name=btn value=Save><input type="reset" name=btn value=clear></td>
    </tr>
</table>
</form>        
</div> 
<%@include file="downlogin.jsp"%>
