<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="fsj.project.integrador.MySQLConexion"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Conferencia Bs As | Comprar Tickets</title>
	<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/uicons-bold-rounded/css/uicons-bold-rounded.css'>
	<link rel="shortcut icon" href="../../favicon.ico" type="image/x-icon">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<link rel="stylesheet" href="../../css/style.css">
</head>
<body>


	<%
	
	
	MySQLConexion conexion = new MySQLConexion();
	Connection cn = conexion.conectar();
	
	try{
		Statement stm = cn.createStatement();
		
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");
		
		while(rsId.next()) {
			
			int idNum = rsId.getInt(1);
			
			String query = "UPDATE `tickets` SET reserva='0'  WHERE id = "+idNum+" ";	
			
			stm.executeUpdate(query);
		}
	
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:include page="../../index.html"></jsp:include>
</body>
</html>