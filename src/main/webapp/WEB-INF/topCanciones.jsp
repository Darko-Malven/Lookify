<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buscar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between aling-items-center">
			<h1>Top 10 Canciones:</h1>
			<a href="/dashboard">Dashboard</a>s
	</div>
	
	
	<table class="table table-bordered">
			<thead class="table-danger">
				<tr>
					<th>Nombre</th>
					<th>Artista</th>
					<th>Calificacion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cancion}" var="canciones">
					<tr >
						<td> <a href="/songs/${canciones.id}" >${canciones.titulo}</a></td>
						<td>${canciones.artista} </td>
						<td>${canciones.calificacion}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	
	
</body>
</html>