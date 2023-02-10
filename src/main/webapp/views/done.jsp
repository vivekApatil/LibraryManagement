<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="myForm" method="post" action="/insert" >
    
            <td>Name: </td>
            <td><input type="text" name="name" /></td><br><br>
    	       
            <td>Gender: </td>
				  <input type="radio"  name="gender" value="MALE">
				  <label>MALE</label>
				  <input type="radio" name="gender" value="FEMALE">
				  <label>FEMALE</label><br><br>
				
            <td>City: </td>
            <select name="city">
            		<option value="">---select city--</option>
				    <option value="kolhapur">Kolhapur</option>
				    <option value="pune">Pune</option>
				    <option value="mumbai">Mumbai</option>
			</select><br><br>
       
  
            <td><input type="submit" value="submit" /></td>
        
   
   
</form>
</body>
</html>