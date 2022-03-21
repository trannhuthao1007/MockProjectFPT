<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
</head>

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
	 <div align="center">
        <h2>Edit Product</h2>
        <form:form action="save" method="post" modelAttribute="product">
            <table border="0" cellpadding="5">
                <tr>
                    <td>ID: </td>
                    <td>${product.id}
                        <form:hidden path="id"/>
                    </td>
                </tr>        
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
                    <td Onclick="return Confirm();" colspan="2"><input type="submit" value="Save"></td>
                    <td><a href="back">BACK</a></td>
                </tr>                    
            </table>
        </form:form>
    </div>
	
</body>
</html>