<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controlador.*" import="java.sql.*" import="java.util.*" session="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<LINK REL=StyleSheet HREF="../estilos/estilos.css" TYPE="text/css">
<title>Insert title here</title>
</head>
<body>
<% String correo = request.getParameter("txtnomAdmin");
	String pass = request.getParameter("contrAdmin");
	ResultSet rs = new Conexion().Consulta("select * from dueñovehiculo where correo_d_vehiculo='"+correo+"'");
	try{
	rs.next();
	if(rs.first()!=false){
		if(!rs.getString("claveusuario").equals(pass)){ 
			out.print("<label>Correo o Contraseña incorrecta</label></div>");
			out.print("<div style=\"text-align: center;margin-top:30px;\">");
			out.print("<a id=\"boton\" href=\"../presentacion/ingresoDue.jsp\">Regresar</a>");
			out.print("</div>");
		}else{ 
			HttpSession se = request.getSession();
			se.setAttribute("id", rs.getString("id_persona"));
			se.setAttribute("nombre", rs.getString("nombre"));
			se.setAttribute("apellido", rs.getString("apellido"));
			response.sendRedirect("../presentacion/sesionDue.jsp");
		}
	}else{
		out.print("<label>Usuario no Registrado</label></div>");
		out.print("<div style=\"text-align: center;margin-top:30px;\">");
		out.print("<a id=\"boton\" href=\"../presentacion/ingresoDue.jsp\">Regresar</a>");
		out.print("</div>");
	}
	}catch(NullPointerException e){
		
	}
	%>	
</body>
</html>