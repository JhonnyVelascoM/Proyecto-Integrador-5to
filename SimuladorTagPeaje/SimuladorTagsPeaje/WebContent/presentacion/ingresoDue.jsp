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
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="opcionIngreso.jsp" >Volver ||</a>
		<a href="registroDue.jsp">Registrarse</a>
	</div>
<div id="cuadro">
<form action="sesionDue.jsp" method="post">
<p id="inicioSesion">INICIAR SESIÓN</p>
<hr>
<br/><br/>
<label id="nombre">NOMBRE DE USUARIO</label>
<br/><br/>
<input type="text" class="entrada"/>
<br/><br/>
<label id="contra">CONTRASEÑA</label>
<br/><br/>
<input type="password" class="entrada">
<br/><br/>
<input type="submit" value="Iniciar Sesión" id="boton"/> 
</form>
<br/>
<p id="descripcion">DUEÑO DEL AUTO</p>
</div>
</body>
</body>
</html>