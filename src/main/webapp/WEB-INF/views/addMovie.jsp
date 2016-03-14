<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Movie</title>
</head>
<body>
<form:form method="POST" action="movie/create" commandName="movieValues">
<table>
    <tr>
        <td>Title :</td>
        <td><form:input path="title" /></td>
    <tr>
        <td>Year :</td>
        <td><form:input path="year" /></td>
    </tr>
    <tr>
        <td>Rating :</td>
        <td><form:input path="rating" /></td>
    </tr>
    <tr>
        <td>Genre :</td>
        <td>
            <form:select path="genre">
            <form:option selected="selected" value="action">ACTION</form:option>  
            <form:option value="crime">CRIME</form:option>  
            <form:option value="drama">DRAMA</form:option>  
            </form:select>
        </td>
    </tr>
    <tr>
        <td>Description :</td>
        <td><form:input path="description" /></td>
    </tr>
    <tr>
        <td>Actor :</td>
        <td><form:input path="actor" /></td>
    </tr>
    <tr>
        <td>Director :</td>
        <td><form:input path="director" /></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="Add"></td>
    </tr>
</table>
</form:form>
</body>
</html>