<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Movie</title>
</head>
<body>
<form:form method="GET"  action="../../movie/getbytitle">
<table>
    <tr>
        <td>Title :</td>
        <td><input type="text" name="title"/></td>
     </tr>
    <tr>
        <td colspan="2"><input type="submit" value="Search"></td>
    </tr>
</table>
</form:form>
	
	
</body>
</html>