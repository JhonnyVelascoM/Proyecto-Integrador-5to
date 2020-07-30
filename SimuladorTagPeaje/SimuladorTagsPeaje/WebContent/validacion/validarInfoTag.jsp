<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>validar informacion del tag</title>
</head>
<body>
<h1>Validación Información de Tag</h1>
<%
if(request.getParameter("txtfirma") != null){
	String fir=request.getParameter("txtfirma");	
	
	
}else{
	session.setAttribute("firma", "Ingrese Firma de vahículo");
}
%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>