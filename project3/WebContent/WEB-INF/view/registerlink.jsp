<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>        
        <title>User Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script  src="http://code.jquery.com/jquery-1.10.1.min.js">

    </script>
    
    <script type="text/javascript">





</script>
        <script>
function validateForm() {
  var first_name = document.forms["myForm"]["first_name"].value;
  var last_name = document.forms["myForm"]["last_name"].value;
  var gender = document.forms["myForm"]["gender"].value;
  var age = document.forms["myForm"]["age"];
  var username = document.forms["myForm"]["username"].value;
  var phone = document.forms["myForm"]["phone"].value;
  var email = document.forms["myForm"]["email"].value;
  var password = document.forms["myForm"]["password"].value;
  var address = document.forms["myForm"]["address"].value;
  

  if (first_name == "") {
	document.getElementById('first_name').style.borderColor = "red";
    alert("Name must be filled out");
    return false;
  }
  
  
}
</script>
    </head>
    <body>
        <div class="container">
            <h3 id="form_header" class="text-warning" align="center">Registration</h3>
            <div> </div>

          
<form:form name = "myForm" action="RegisterUser" method="post" onsubmit="return validateForm()"  modelAttribute="userObj">

	

    <form:label path="first_name" >First Name</form:label>
    <form:input type = "text" placeholder= "Enter First Name" path="first_name" required="required"/>
    <br>
     
    <form:label path="last_name" >Last Name</form:label>
    <form:input type = "text" placeholder= "Enter Last Name" path="last_name" required="required"/>
    <br>
    
    <form:label path="gender" placeholder= "Select Gender">Gender</form:label>
    <form:select path="gender" required="required">
    <form:option value="Male">Male</form:option>
    <form:option value="Female">Female</form:option>
    <form:option value="Other">Other</form:option>
    
    </form:select>
        <br>
    
    
        <form:label path="age" placeholder= "Enter age">Age</form:label>
    <form:input type = "text" maxlength="3"  path="age" required="required"/>
        <br>
    
    
        <form:label path="username" placeholder= "Enter Username">UserName</form:label>
    <form:input type = "text" path="username" required="required"/>
        <br>
    
    
        <form:label path="phone" placeholder= "Enter Contact Number">Contact Number</form:label>
    <form:input type = "text"  minlength="10"  pattern="[1-9]{1}[0-9]{9}" path="phone" required="required" />
        <br>
    
        <form:label path="email" placeholder= "Enter Email">Email</form:label>
    <form:input type = "email" path="email" required="required"/>
        <br>
    
    
            <form:label path="password" placeholder= "Enter Last Name">Password</form:label>
    <form:input type = "password" path="password" required="required"/>
        <br>
    
    
            <form:label path="address" placeholder= "Enter Address">Address</form:label>
    <form:input type = "text" path="address" required="required"/>
        <br>
    
    

    
<input type="submit" value="Submit" />

</form:form>
        </div>
    </body>
</html>