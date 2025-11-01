<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Book Library</title>
	<style>
		body {
			font-family: 'Segoe UI', sans-serif;
			background-color: #f4f4f4;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}

		.container {
			background-color: #fff;
			padding: 30px 40px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0,0,0,0.1);
			width: 400px;
		}

		h2 {
			text-align: center;
			color: #333;
			margin-bottom: 20px;
		}

		.form-group {
			display: flex;
			align-items: center;
			margin-bottom: 15px;
		}

		.form-group label {
			flex: 1;
			text-align: right;
			margin-right: 10px;
			color: #555;
			font-weight: bold;
		}

		.form-group input {
			flex: 2;
			padding: 8px 10px;
			border: 1px solid #ccc;
			border-radius: 4px;
		}

		.form-submit {
			text-align: center;
			margin-top: 20px;
		}

		.form-submit input[type="submit"] {
			padding: 10px 25px;
			border: none;
			border-radius: 5px;
			background-color: #007BFF;
			color: white;
			cursor: pointer;
			font-size: 14px;
		}

		.form-submit input[type="submit"]:hover {
			background-color: #0056b3;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>NEW BOOK ENTRY</h2>
		<form:form action="./add" modelAttribute="book" method="post">
			
			<div class="form-group">
				<form:label path="author">BOOK AUTHOR:</form:label>
				<form:input path="author" />
			</div>
			
			<div class="form-group">
				<form:label path="name">BOOK NAME:</form:label>
				<form:input path="name" />
			</div>
			
			<div class="form-submit">
				<input type="submit" value="ADD BOOK">
			</div>
			
		</form:form>
	</div>
</body>
</html>
