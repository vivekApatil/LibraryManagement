<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="http://localhost:9198/home">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:9198/seen">Add Transaction</a>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>
  	<div class="container" style=padding-top:2%;>
		<table class="table">
  <thead>
    <tr>
      <th scope="col">TID</th>
      <th scope="col">Stud_ID</th>
      <th scope="col">Sname</th>
      <th scope="col">BID</th>
      <th scope="col">Book Name</th>
      <th scope="col">Issue Date</th>
      <th scope="col">Returrn Date</th>
      <th scope="col">Count</th>
      <th scope="col">RENEW</th>
      <th scope="col">RETURN</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="wow" items="${ki}">
    		<tr>
      			<td>${wow.tid}</td>
                <td>${wow.id}</td>
                <td>${wow.sname}</td>
                <td>${wow.bid}</td>
                <td>${wow.bookname}</td>
                <td>${wow.issue_date}</td>
                <td>${wow.return_date}</td>
                <td>${wow.count}</td>
                <td><a href="/update_tran/${wow.tid}" >Renew</a></td>
                <td><a href="/delete_tran/${wow.tid}" >Return</a></td>
    		</tr>
     </c:forEach>
  </tbody>
</table>
	</div>
  </body>
</html>
