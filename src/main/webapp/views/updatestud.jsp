<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>

</script>

</head>
<body>

	<form:form method="post" action="/update_data/${id}" >
     
            Name:<form:input path="name" name="name" /><br>
            
				  Gender:<form:radiobutton  path="gender"  name="gender" value="MALE"/>
				  <label>MALE</label>
				  <form:radiobutton  name="gender" path="gender" value="FEMALE"/>
				  <label>FEMALE</label><br>
			  
            City:<form:select name="city" path="city" value="city">
				    <form:option path="city" value="kolhapur">Kolhapur</form:option>
				    <form:option path="city" value="pune">Pune</form:option>
				    <form:option path="city" value="mumbai">Mumbai</form:option>
			</form:select><br>
       
  
            <input type="submit" value="submit" />
        
   
   
	</form:form>
	
	<a href="/showbooks">Add Book</a>

</body>
</html>