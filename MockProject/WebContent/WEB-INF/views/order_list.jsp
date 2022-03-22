<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>

<style>
		.shop{
	background-color: yellow;
			width: 100%;
			height: 58px;
	}
		.shop_header a{text-decoration: none;
			font-size: 42px;
			color:#305A7B;
			text-indent: 14px;
			
		
		}{
			
			
			 
			}
			
			
	</style>


</head>
<body>

<div class="shop" >

		 <h1 class="shop_header" ><a href="back">Shop</a></h1>
	

</div>


<div>
<h3 align="center">Order</h3>
	
	<table border="1" padding="5" class="table" align="center">
		<tr class="titlerow">
			<th>ID</th>
			<th>Custom_id</th>
			<th>Product_id</th>
			<th>number</th>
			<th>Total</th>
			<th>Status</th>
			<th colspan="3">Action</th>
		</tr>
		<c:forEach items="${listOrder}" var="orders">
			<tr>
				<td>${orders.id}</td>
            	<td>${orders.custom_id}</td>
            	<td>${orders.product_id}</td>
            	<td>${orders.number}</td>
            	<td>${orders.total}</td>
            	<td>${orders.status}</td>
            	<td>
            	<a href= "">Order</a></td>
            	            	        	
            	            	
			</tr>
			
		</c:forEach>
	</table>
</div>	

</body>
</html>