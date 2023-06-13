<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lookify!</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div  class="mt-3 d-flex justify-content-between aling-items-center">
			<a href="/songs/new" class="btn btn-success">Agregar Cancion</a>
			<a href="/search/topTen" class="btn btn-success">Top Canciones</a>
			<form action="/search/" method="post">
				<input type="text" placeholder="Buscar" name="artista">
				<input type="submit" value="buscar" class="btn btn-primary">
			</form>
		</div>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Artista</th>
					<th>Calificacion</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${canciones}" var="cancion">
					<tr>
						<td> <a href="/songs/${cancion.id}" >${cancion.titulo}</a></td>
						<td><a href="/search/${cancion.artista}" >${cancion.artista}</a></td>
						<td>${cancion.calificacion}</td>
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