<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Ingreso de Usuario</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulaci�n <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="opcionIngreso.jsp" >Volver ||</a>
		<a href="registroDue.jsp">Registrarse</a>
	</div>
<div id="cuadro">
<form action="sesionDue.jsp" method="post">
<p id="inicioSesion">INICIAR SESI�N</p>
<hr>
<br/><br/>
<label id="nombre">NOMBRE DE USUARIO</label>
<br/><br/>
<input type="text" class="entrada"/>
<br/><br/>
<label id="contra">CONTRASE�A</label>
<br/><br/>
<input type="password" class="entrada">
<br/><br/>
<input type="submit" value="Iniciar Sesi�n" id="boton"/> 
</form>
<br/>
<p id="descripcion">DUE�O DEL AUTO</p>
</div>
</body>
</body>
</html>