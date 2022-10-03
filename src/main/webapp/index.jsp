<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="css/login.css" type="text/css">
	</head>
	<body>
			<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
			<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
			<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
			
			<div class="wrapper fadeInDown">
			  <div id="formContent">
			
		    <div class="fadeIn first">
			      <img src="imagenes/Entrenamos.png" id="icon" alt="User Icon" />
			    </div>
			
			    <form  method="post" action="Login">
			   	  <%@include file="/error.jsp" %>	
			      <input type="text"  class="fadeIn second" name="userNickname" placeholder="Usuario">
			      <input type="password"  class="fadeIn third" name="userPwd" placeholder="Contraseña">
			      <input type="submit" class="fadeIn fourth" value="Ingresar"/>
			    </form>
			  </div>
			</div>
		
	</body>

	<footer>
		<%@include file="/footer.jsp" %>	
	</footer>
</html>