
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
    <head>
    	
    	<%@include file="/header.jsp" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Alta dictado de clase</title>
        <link rel="stylesheet" href="https://codepen.io/gymratpacks/pen/VKzBEp#0">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/altaDictadoClase.css">
    </head>
    <body>
      
      
      <div class="row">
    <div class="col-md-12">
      <form action="AltaDictadoClase" method="post">
        <h3 align="center"> Alta dictado de clase </h3>
        <hr>
         
         <label for="institucion">Institucion Deportiva:</label>
    		<select id="institucion" name="institucion">
    			<c:forEach items="${listInstituciones}" var="institucion">
        			<option value="${institucion.nombre}">${institucion.nombre}</option>
    			</c:forEach>
          	</select>
		
		
          <select id="institucion" name="institucion">
              <option value="frontend_developer">Front-End Developer</option>
          </select>
          
         <label for="actividad">Actividad Deportiva:</label>
          <select id="actividad" name="actividad">
              <option value="frontend_developer">Front-End Developer</option>
          </select>
          
        <fieldset>     
          <label for="name">Nombre de la clase:</label>
          <input type="text" id="name" name="nombre_claes">
        
		  <label for="date">Fecha y hora de inicio:</label>
          <input type="datetime-local" id="name" name="nombre_claes">
                  
          <label for="profesor">Profesor que dicta la clase:</label>
          <select id="profesor" name="institucion">
              <option value="frontend_developer">Front-End Developer</option>
          </select>
       
          <label for="name">URL: </label>
          <input type="text" id="name" name="nombre_claes">
          
        </fieldset>
       
        <button type="submit">Guardar</button>
        
       </form>
        </div>
      </div>
      
    </body>
    <footer>
    <%@include file="/footer.jsp" %>
    </footer>
</html>