<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Registro Usuario</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="ingresoDue.jsp" >Volver </a>
	</div>
	<div id="cuadro">
<form action="validarDue.jsp" method="post">
<p id="descripcion">REGISTRAR USUARIO</p>
	<br/><br/>
	Cédula:
    <input type="text" name="cedula" required="required">
    <br/><br/>
    Nombres:
    <input type="text" name="nombres" required="required" >
    <br/><br/>
    Dirección:
    <input type="text" name="direccion">
    <br/><br/>
    Teléfono:
    <input type="text" name="telefono">
    <br/><br/>
    Correo:
    <input type="text" name="correo" required="required">
 	<br/><br/>
    Contraseña:
    <input type="password" name="contraseña" required="required">
    <br/><br/>
    <p><input type="submit" value="REGISTRAR"></p> <br>
    <a href="ingresoDue.jsp"><input type="button" value="CANCELAR"></a>
</form>
<br/>
</div>

</body>
</html>