<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Ingreso Administrador</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="opcionIngreso.jsp" >Volver ||</a>
		<a href="registroAdmin.jsp">Registrar</a>
	</div>
<div id="cuadro">
<form action="validarAdmin.jsp" method="post">
<p id="inicioSesion">INICIAR SESIÓN</p>
<hr>
<br/><br/>
<label id="nombre">NOMBRE DE USUARIO</label>
<br/><br/>
<input type="text" class="entrada" required="required" name="txtnomAdmin"/>
<br/><br/>
<label id="contra">CONTRASEÑA</label>
<br/><br/>
<input type="password" class="entrada" required="required" name="contrAdmin"/>
<br/><br/>
<input  type="submit" value="Iniciar sesión" id="boton"/> 
</form>
<br/>
<p id="descripcion">ADMINISTRADOR</p>
</div>
</body>
</html>