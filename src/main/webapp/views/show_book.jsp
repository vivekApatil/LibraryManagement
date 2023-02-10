<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<h1 align="center">Book Store</h1>
    <table border="2" width="70%" cellpadding="2" align="center">
        <tr>
            <th>Id</th>
            <th>Book Name</th>
            <th>Discripton</th>
            <th>Author</th>
            <th>Qty</th>
            <th>Price</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="king" items="${pp}">
            <tr>
                <td>${king.bid}</td>
                <td>${king.book_name}</td>
                <td>${king.discription}</td>
                <td>${king.author}</td>
                <td>${king.qty}</td>
                <td>${king.price}</td>
                <td><a href="/update_book/${king.bid}" >Update</a></td>
                <td><a href="/delete_book/${king.bid}" >delete</a></td>
            </tr>
        </c:forEach>
    </table>
	
	<a href="/saw">Add Book</a>

</body>
</html>