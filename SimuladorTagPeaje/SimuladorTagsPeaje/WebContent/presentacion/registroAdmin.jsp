<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Registro Administrador</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulaci�n <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="ingresoAdmin.jsp" >Volver </a>
	</div>
	<div id="cuadro">
<form action="registrarAdmin.jsp" method="post">
<p id="descripcion">REGISTRAR ADMINISTRADOR</p>
    <br/>
    C�dula:
    <input type="text" name="cedula" required="required">
    <br/><br/>
    Nombre:
    <input type="text" name="nombres" required="required">
    <br/><br/>
    Apellido:
    <input type="text" name="apellido" required="required">
    <br/><br/>
 	Ciudad:
    <input type="text" name="ciudad">
 	<br/><br/>
    Direcci�n:
    <input type="text" name="direccion">
    <br/><br/>
    Tel�fono:
    <input type="text" name="telefono" >
    <br/><br/>
     Seleccionar �rea:
    <select name="area" required="required">
      <option value="">
      <option value="g1">Garita 1 
      <option value="g2">Garita 2
    </select>
    <br/><br/>
    Elija el horario:
    <br/><br/>
    <input type="Radio" name= "preferencia"value="dia">06:00h-14:00h
    <br/>
    <input type="Radio" name= "preferencia"value="noche">14:00h-22:00h
     <br/><br/>
     Correo:
    <input type="text" name="correo" required="required">
 	<br/><br/>
    Contrase�a:
    <input type="password" name="contrase�a" required="required">
    <br/><br/>
    <p><input type="submit" value="REGISTRAR"></p> <br>
    <a href="ingresoAdmin.jsp"><input type="button" value="CANCELAR"></a>
</form>
<br/>
</div>
</body>
</html>