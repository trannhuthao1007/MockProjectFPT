<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Manager</title>
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
			
			.oder_header{
			font-size: 20px;
			text-align: right;
			 margin-top: -17px;
			 margin-right: 20px;
			}
			
			.product_body{
			margin-top: 50px; 
			
			}
			

		.table{
			width:70%;
					
		}

		td {
			width: 70px;
			height: 25px;
			text-align: center;
		}
		.searchtext {
		width: 40%;
		height: 30px;
		}
		.searchbutton{
		margin-top: 5px;
		width: 75px;
		height: 35px;
		font-size: 18px;
		}
	
	.titlerow {
		background-color: yellow;
		
	}
</style>
<script>
    function Confirm()
    {
      var x = confirm("Are you sure you want to take this action?");
      if (x)
          return true;
      else
        return false;
    }
</script> 


<body>
<div class="shop" >

		 <h1 class="shop_header" >Shop</h1>
	<h2 class= "oder_header"> <a href= "order_list">Order list </a></h2>

</div>


<div align="center" class="product_body">
	<h2>Product</h2>
	<form  method="get" action="search">
		<input class="searchtext" type="text" name="keyword"/>
		<div>
		<input class="searchbutton" type="submit" value="Search" />
		</div>
	</form>
	<h3><a href="new">Add</a></h3>
	
	<table border="1" padding="5" class="table">
		<tr class="titlerow">
			<th>ID</th>
			<th>Code</th>
			<th>Name</th>
			<th>Price</th>
			<th colspan="3">Action</th>
		</tr>
		<c:forEach items="${listProduct}" var="product">
			<tr>
				<td>${product.id}</td>
            	<td>${product.code}</td>
            	<td>${product.name}</td>
            	<td>${product.price}</td>
            	<td>
            	<a href= "">Order</a></td>
            	
            	<td Onclick="return Confirm();" ><a href= "delete?id=${product.id}">Delete</a></td>
            	 
            	
            		<td><a href= "edit?id=${product.id}">Edit</a></td>
            		
            	
            	
            	
			</tr>
			
		</c:forEach>
	</table>
</div>

	
</body>
</html>