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
  <div class="container-fluid position-fixed">
  <nav class="navbar navbar-expand-lg navbar-light bg-light ">
  
    <a class="navbar-brand" href="http://localhost:9198/home">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="http://localhost:9198/showme">Show Transaction</a>
        </li>
        
      </ul>
      
    </div>
 
</nav>
 </div>
  
<div class="container" style=padding-top:5%;>
	<form method="post" action="/show_all">
  <div class="row mb-2">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Student Id</label>
    <div class="col-sm-6">
      <input type="text"  value="${id}" name="id" class="form-control" id="inputEmail3" /><br>
    </div>
    </div>
     <div class="row mb-2">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Book Id</label><br>
    <div class="col-sm-6">
      <input type="text"  value="${bid}" name="bid" class="form-control" id="inputEmail3"/><br>
    </div>
    </div>
    <div class="row mb-3">
    <button type="submit" class="btn btn-primary" style=width:10%; >Submit</button>
  </div>
  </form>
  </div>
<br><br>

		 <div class="container" >
	<form method="post" action="/insertdate">
  <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Student Id</label><br>
    <div class="col-sm-6">
      <input type="text"  value="${id}" name="id" class="form-control" id="inputEmail3" /><br>
    </div>
    </div>
     <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label" >Studet Name</label><br>
    <div class="col-sm-6">
      <input type="text"  value="${name}" name="sname" class="form-control" id="inputEmail3" /><br>
    </div>
    </div>
     <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Book Id</label><br>
    <div class="col-sm-6">
      <input type="text"  value="${bid}" name="bid" class="form-control" id="inputEmail3"/><br>
    </div>
    </div>
      <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Book Name</label><br>
    <div class="col-sm-6">
      <input type="text"  value="${bname}" name="bookname" class="form-control" id="inputEmail3"/><br>
    </div>
    </div>
      <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Issue Date</label><br>
    <div class="col-sm-6">
      <input type="date"   name="issue_date" class="form-control" id="inputEmail3"/><br>
    </div>
    </div>
      <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Return Date</label><br>
    <div class="col-sm-6">
      <input type="date"   name="return_date" class="form-control" id="inputEmail3"/><br>
    </div>
    </div>
   <div class="row mb-3">
    <button type="submit" class="btn btn-primary" style=width:10%; >Submit</button>
  </div>
  </form>
</div>

        </body>
</html>

