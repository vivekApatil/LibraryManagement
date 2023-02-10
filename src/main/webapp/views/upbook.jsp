<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form:form action="/update_bookdata/${bid} " method="GET">
		
		
		
		Book Name:<form:input type="text" path="book_name" name="book_name" /></td><br><br>
		
		Discription:<form:input type="text" path="discription" name="discription" /></td><br><br>
		
		Author:<form:input type="text" path="author" name="author" /></td><br><br>
		
		QTY:<form:input type="text" path="qty" name="qty" /></td><br><br>
		
		Price:<form:input type="text" path="price" name="price" /></td><br><br>
		
		<input type="submit" value="submit" />
	
	</form:form>

</body>
</html>