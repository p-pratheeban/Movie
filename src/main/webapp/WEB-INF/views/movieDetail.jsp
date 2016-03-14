<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Movie</title>
</head>
<body>
<form:form method="POST"  action="../../movie/edit/${movieDetails.id}" commandName="movieDetails">
<table>
    <tr>
        <td>Title :</td>
        <td><form:input path="title" value="${movieDetails.title}" /></td>
    <tr>
        <td>Year :</td>
        <td><form:input path="year" value="${movieDetails.year}"  /></td>
    </tr>
    <tr>
        <td>Rating :</td>
        <td><form:input path="rating" value="${movieDetails.rating}"/></td>
    </tr>
    <tr>
        <td>Genre :</td>
        <td><form:input path="genre" value="${movieDetails.genre}"/></td>
    </tr>
    <tr>
        <td>Description :</td>
        <td><form:input path="description" value="${movieDetails.description}"/></td>
    </tr>
    <tr>
        <td>Actor :</td>
        <td><form:input path="actor" value="${movieDetails.actor}"/></td>
    </tr>
    <tr>
        <td>Director :</td>
        <td><form:input path="director" value="${movieDetails.director}"/></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="Update"></td>
    </tr>
</table>
</form:form>
	
	
</body>
</html>