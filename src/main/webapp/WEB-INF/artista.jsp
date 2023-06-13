<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artista</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container mt-3">
		<div class="d-flex justify-content-between aling-items-center ">
			<h1>Cancion del artista :${art}</h1>
			<form action="/search/" method="post">
				<input type="text" placeholder="Buscar" name="artista">
				<input type="submit" value="buscar" class="btn btn-primary">
			</form>	
			<a href="/dashboard">Dashboard</a>
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Cancion</th>
					<th>Calificacion</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${artista}" var="art">
					<tr>
						<td> <a href="/songs/${art.id}" >${art.titulo}</a></td>
						<td>${art.calificacion}</td>
						<td>
							<form action="/borrar/${cancion.id}" method="post">
								<input type="hidden" name="_method" value="DELETE"><!--Sobre escribinos el method del formulario -->
								<input type="submit" value="Borrar" class="btn btn-danger">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
</body>
</html>