<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Principal Peaje</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="registroDue.jsp" >Registrarse ||</a>
		<a href="opcionIngreso.jsp">Ingresar</a>
	</div>
	<br/><br/>
	<br/>
	<form action="validarInfoTag.jsp"method="post">
	<label id="firma">Ingrese Firma del Vehículo:</label>
	<br/>
	<input type="text" class="entrada"name="txtfirma">
	</form>
	<br/>
	<br/>
	<input type="submit" value="Ingresar" id="botonPasar"/>
	<label id="firma">Información de Tag:</label>
	<br/>
	<textarea rows="" cols=""></textarea>
	<br/> 
    <div id="firma">
	<a href="informacion.jsp">Información y comentarios</a>
	</div>
</body>
</html>