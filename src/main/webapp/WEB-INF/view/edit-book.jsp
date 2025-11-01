<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BOOK UPDATE FORM</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<style>
		.form-container {
			max-width: 600px;
			margin: auto;
			background-color: #fff;
			padding: 30px 40px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
		}
	</style>
</head>
<body>
	
	<div class="container mt-5">
		<div class="form-container">
		  <h2 class="text-center mb-4">Update Book</h2>
		  
		  <form:form method="POST" action="/library-app/${book.id}/update" modelAttribute="book">
			
			<div class="mb-3 text-center">
				<strong>ID:</strong> ${book.id}
			</div>

			<div class="mb-3 row">
			  <label class="col-sm-4 col-form-label text-end" for="author">Author Name</label>
			  <div class="col-sm-8">
			    <form:input path="author" cssClass="form-control" id="author" />
			  </div>
			</div>

			<div class="mb-3 row">
			  <label class="col-sm-4 col-form-label text-end" for="name">Book Name</label>
			  <div class="col-sm-8">
			    <form:input path="name" cssClass="form-control" id="name" />
			  </div>
			</div>

			<div class="text-center mt-4">
				<input type="submit" value="Update Book" class="btn btn-primary px-4" />
			</div>
		  
		  </form:form>
		</div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>
