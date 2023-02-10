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
	
	<h1 align="center">Student Details</h1>
    <table border="2" width="70%" cellpadding="2" align="center">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Gender</th>
            <th>City</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="contact" items="${vi}">
            <tr>
                <td>${contact.id}</td>
                <td>${contact.name}</td>
                <td>${contact.gender}</td>
                <td>${contact.city}</td>
                <td><a href="/update_stud/${contact.id}" >Update</a></td>
                <td><a href="/delete_stud/${contact.id}" >delete</a></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>