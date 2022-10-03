
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
    <head>
    	<%@include file="/header.jsp" %>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro a clase</title>
        <link rel="stylesheet" href="https://codepen.io/gymratpacks/pen/VKzBEp#0">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/altaDictadoClase.css">
    </head>
    
    <body>       
      <div class="row">
    	<div class="col-md-12">
      	  <form action="RegistroClase" method="post">
          <h3 align="center"> Registrarme a clase </h3>
          <hr>
         
          <label for="institucion">Institucion Deportiva:</label>
    	  <select id="institucion" name="institucion">
			<option value="Hola">Hola</option>	
          </select>
		
		  <label for="actividad">Actividad Deportiva:</label>
          <select id="actividad" name="actividad">
             <option value="Actividad1">Actividad1</option>
          </select>
          
          <label for="clase">Clase:</label>
          <select id="clase" name="clase">
             <option value="a">a</option>
          </select>
          <hr>
          
        	  <div class="panel panel-default">

  			  	<div class="panel-heading">
    				<h5 align="center"> Informacion de la clase </h5>
  				</div>

  		  		<div class="panel-body">
    				<label for="actividad">Fecha de inicio:</label> 
    				<h6>12/12/2022 (placeholder)</h6>
    			
    				<label for="actividad">Profesor:</label> 
    				<h6>Pedro (placeholder)</h6>
    			
    				<label for="actividad">Url:</label> 
    				<h6>www.google.com (placeholder)</h6>	
  		  		</div>

			 </div>

           <hr>
       
        <button type="submit">Guardar</button>
        
       </form>
        </div>
      </div>
      
    </body>
    <footer>
    <%@include file="/footer.jsp" %>
    </footer>
</html>