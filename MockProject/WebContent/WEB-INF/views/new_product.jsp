<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
</head>
<body>
	<div align="center">
	<h2><a>Manager Product</a></h2>
	<form:form action="save" method="post" modelAttribute="product">
            <table border="0" cellpadding="5">
                    
                    
                <tr>
                    <td>Code: </td>
                    <td><form:input path="code" /></td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td><form:input path="price" /></td>
                </tr>    
                <tr >
                    <td  colspan="2"><input type="submit" value="Save"></td>
                    
                </tr>                    
            </table>
        </form:form>
        </div>
</body>
</html>