<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml11.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Details</title>
</head>
<body>
	<h1>Movie Details</h1>
	<table border="1px" cellpadding="10" cellspacing="0">
		<th>Id</th>
		<th>Title</th>
		<th>Year</th>
		<th>Rating</th>
		<th>Genre</th>
		<th>Description</th>
		<th>Actor</th>
		<th>Director</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="movie" items="${movies}">
	<tr>
		<td>${movie.id}</td>
		<td>${movie.title}</td>
		<td>${movie.year}</td>
		<td>${movie.rating}</td>
		<td>${movie.genre}</td>
		<td>${movie.description}</td>
		<td>${movie.actor}</td>
		<td>${movie.director}</td>
		<td><a href="movie/edit/${movie.id}">edit</a></td>
		<td><a href="movie/delete/${movie.id}">delete</a></td>
	</tr>
	</c:forEach>
	</table>
	
	<a href="movie"> Add a Movie</a>
	<a href="getmovie"> Get Movie by Title</a>
</body>
</html>