<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Opci�n de Ingreso</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulaci�n <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="index.jsp" >Inicio ||</a>
		<a href="registroDue.jsp">Registrarse</a>
	</div>
	<div id="cuadro">
	<p id="descripcion">Acceda a una opci�n</p>
	<br/>
	<a href="ingresoAdmin.jsp">
	<input type="button" value="Ingreso Administrador" id="boton"/></a> 
	<br/><br/>
	<a href="ingresoDue.jsp">
	<input  type="button" value="Ingreso Due�o de veh�culo" id="boton"/></a> 
	<br/><br/>
	<a href="invitado.jsp">
	<input  type="button" value="Ingreso Invitado" id="boton"/></a> 
	<br/>
	
	
	</div>
</body>
</html>