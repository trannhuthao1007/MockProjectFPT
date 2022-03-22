<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Product</title>
</head>
	
	<style>
		.shop{
	background-color: yellow;
			width: 100%;
			height: 58px;
	}
		.shop_header{
			font-size: 42px;
			color:#141823;
			text-indent: 14px;
			 
			}
			
			
	</style>
	
	
<body>

<div class="shop" >

		 <h1 class="shop_header" >Shop</h1>
	

</div>


	<div align="center">
	<h2><a href ="back">Manager Product</a></h2>
	<form:form action="update" method="post" modelAttribute="product">
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
                    <td  colspan="2"><input type="submit" value="Update"></td>
                    <td  ><a href="new">Add new</a></td>
                    
                </tr>                    
            </table>
        </form:form>
        </div>
</body>
</html>