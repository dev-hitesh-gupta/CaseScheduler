<%-- 
    Document   : Client_form
    Created on : Jul 25, 2014, 1:04:44 PM
    Author     : Hitesh Gupta
--%>



            <%@include file="uphome.jsp" %>
            <script>
function validateForm() {
    var x = document.forms["passform"]["pass"].value;
    if (x==null || x=="") {
        alert("Password must be filled out");
        return false;
    }
}
</script>
            <form name='passform' method=post action = "pass_submit.jsp" onsubmit="return validateForm()">
    
<table>
     
    <tr>
        <td>Password:</td><td><input type="password" name=pass value= ""></td>
    </tr>   
     <tr>
        <td></td>
        <td><input type="submit" name=btn value=Save><input type="reset" name=btn value=clear></td>
    </tr>
</table>
</form>
           
            
