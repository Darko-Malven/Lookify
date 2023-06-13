<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalles</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between aling-items-center">
			<a href="/dashboard">Dashboard</a>
		</div>
		
		<table>
			<tbody>
				<tr>
					<td>Titulo</td>
					<td>${cancion.titulo}</td>
				</tr>
				<tr>
					<td>Artista</td>
					<td>${cancion.artista}</td>
				</tr>
				<tr>
					<td>Calificacion</td>
					<td>${cancion.calificacion}</td>
				</tr>
			</tbody>
		</table>
		<form action="/borrar/${cancion.id}" method="post">
			<input type="hidden" name="_method" value="DELETE"><!--Sobre escribinos el method del formulario -->
			<input type="submit" value="Borrar" class="btn btn-danger">
		</form>
	</div>
</body>
</html>