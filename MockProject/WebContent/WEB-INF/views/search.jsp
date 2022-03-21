<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>


<body>
<div align="center">
<h1>Product</h1>
	<form method="get" action="search">
		<input type="text" name="keyword"/>
		<input type="submit" value="Search" />
	</form>
    <h2 ><a href = "back">Search Result</a></h2>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Code</th>
            <th>Name</th>
            <th>Price</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${result}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.code}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>
            		<a href= "edit?id=${product.id}">Edit</a>
            		
            	</td>
            	<td><a href= "delete?id=${product.id}">Delete</a></td>
        </tr>
        </c:forEach>
    </table>
</div>   

</body>
</html>