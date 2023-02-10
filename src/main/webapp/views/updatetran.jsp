<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <a class="navbar-brand" href="http://localhost:9198/seen">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:9198/seen">Add Transaction</a>
        </li>
         </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:9198/showme">Show Transaction</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="http://localhost:9198/home">About Us</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
  

		
   			<div class="container" align="center" style=padding-top:4%;>
		<h1>Renew Date</h1><br><br>
<form:form class="row row-cols-lg-auto g-3 align-items-center" method="post" action="/update_trandata/${tid}">
  <div class="col-12">
    <label class="visually-hidden" for="inlineFormInputGroupUsername">Return Date</label>
    <div class="col-md-2" >
      <div class="input-group-text">Return Date</div>
      <form:input type="text" path="return_date" name="return_date"  class="form-control" id="inlineFormInputGroupUsername" placeholder="Username"/>
    </div><br><br>
    <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  
</form:form>
 </div>
   			
  </body>
</html>




  