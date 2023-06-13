<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Añadir cancion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-between aling-items-center d-flex flex-row-reverse">
			<a href="/dashboard">Dashboard</a>
		</div>
		<form:form action="/songs/new" method="post" modelAttribute="cancion">
			<div class="mt-2">
				<form:label path="titulo">Titulo</form:label>
				<form:input path="titulo" class="form-control"/>
				<form:errors path="titulo" class=" text-danger"/>
			</div>
			<div class="mt-2">
				<form:label path="artista">Artista</form:label>
				<form:input path="artista" class="form-control"/>
				<form:errors path="artista" class=" text-danger"/>
			</div>
			<div class="mt-2">
				<form:label path="calificacion">Calificacion</form:label>
				<form:input path="calificacion" class="form-control"/>
				<form:errors path="calificacion" class=" text-danger"/>
			</div>
			<button type="submit" value="guardar" class="btn btn-success mt-3">Añadir Cancion</button>
		</form:form>
	</div>
</body>
</html>