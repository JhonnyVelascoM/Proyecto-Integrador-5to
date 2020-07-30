<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Insert title here</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
	<a href="sesionDue.jsp" >Regresar ||</a>
		<a href="cerrarsesion.jsp">Salir</a>
	</div>
	<div id="opcion">
	<a href="ingresoDue.jsp" >Volver </a>
	</div>
	<div id="cuadro">
<form action="validarAuto.jsp" method="post">
<p id="descripcion">REGISTRAR VEHÍCULO</p>
	<br/><br/>
	Placa:
    <input type="text" name="txtplaca" required="required">
    <br/><br/>
    Tipo de vehículo:
    <input type="text" name="txttipo"  required="required">
    <br/><br/>
    Modelo:
    <input type="text" name="txtmodelo">
    <br/><br/>
    Marca:
    <input type="text" name="txtmarca">
    <br/><br/>
    Color:
    <input type="text" name="txtcolor">
 	<br/><br/>
    <p><input type="submit" value="REGISTRAR"></p> <br>
    <a href="ingresoDue.jsp"><input type="button" value="CANCELAR"></a>
</form>
<br/>
</div>
</body>
</html>