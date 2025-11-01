<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Library Books</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>

	<div class="container mt-5">
		<h2 class="text-center mb-4">📚 Library Dashboard</h2>

		<div class="text-end mb-3">
			<a href='/library-app/new-book' class="btn btn-success">➕ Add New Book</a>
		</div>

		<table class="table table-bordered table-striped text-center">
			<caption class="caption-top fw-bold text-center">Books Collection</caption>
			<thead class="table-light">
				<tr>
					<th>Book ID</th>
					<th>Book Name</th>
					<th>Book Author</th>
					<th>Operation</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${books}" var="book">
					<tr>
						<td>${book.id}</td>
						<td>${book.name}</td>
						<td>${book.author}</td>
						<td>
							<div class="d-flex justify-content-center gap-2">
								<a href="/library-app/${book.id}" class="btn btn-sm btn-primary">Edit</a>
								<form action="/library-app/${book.id}/delete" method="POST" class="m-0">
									<input type="submit" value="Delete" class="btn btn-sm btn-danger" />
								</form>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
