<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/bookinsert" method="post">
		
		Book Name:<input type="text" name="book_name" /></td><br><br>
		
		Discription:<input type="text" name="discription" /></td><br><br>
		
		Author:<input type="text" name="author" /></td><br><br>
		
		Qty:<input type="number" name="qty" /></td><br><br>
		
		Price:<input type="number" name="price" /></td><br><br>
		
		<input type="submit" value="submit" />
	
	</form>
	
	<a href="/showbooks">Show Book</a>
</body>
</html>