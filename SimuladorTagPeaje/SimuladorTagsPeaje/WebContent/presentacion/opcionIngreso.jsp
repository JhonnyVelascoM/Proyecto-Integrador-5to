<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Opción de Ingreso</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="index.jsp" >Inicio ||</a>
		<a href="registroDue.jsp">Registrarse</a>
	</div>
	<div id="cuadro">
	<p id="descripcion">Acceda a una opción</p>
	<br/>
	<a href="ingresoAdmin.jsp">
	<input type="button" value="Ingreso Administrador" id="boton"/></a> 
	<br/><br/>
	<a href="ingresoDue.jsp">
	<input  type="button" value="Ingreso Dueño de vehículo" id="boton"/></a> 
	<br/><br/>
	<a href="invitado.jsp">
	<input  type="button" value="Ingreso Invitado" id="boton"/></a> 
	<br/>
	
	
	</div>
</body>
</html>