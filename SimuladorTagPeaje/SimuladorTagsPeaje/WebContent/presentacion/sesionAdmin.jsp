<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Sesión Administrador</title>
</head>
<body>
<div id="titulo">
		<label>Bienvenido a Nuestra Simulación <br/>de Tag de Peaje</label>
</div>	
	<div id="opcion">
		<a href="cerrarsesion.jsp">Salir</a>
	</div>
<label id="firma">Bienvenido</label>
	<br/>
	<form action="datos.jsp"method="post">
	<label id="firma">Ingrese Placa del vehículo:</label>
	<br/>
	<input type="text" class="entrada"name="txtfirma">
	<br/>
	<input type="submit" value="Consultar" id="boton"/>
	</form>
	<Table border="1">
<tr> 
  <th>
   Firma
  </th>
  <th>
   Placa
  </th>
  <th>
   ID_dueño
  </th>
  <th>
   Nombre
  </th>
  <th>
   Apellido
  </th>
  <th>
   Nº Caseta cobro
  </th>
  <th>
   Fecha
  </th>
  <th>
   Hora
  </th>
</tr>
</Table>
</body>
</html>