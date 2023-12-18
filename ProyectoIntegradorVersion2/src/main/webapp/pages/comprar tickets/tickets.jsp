<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<!-- CABECERA -->
	<header>
		<nav class="navbar navbar-expand-lg  bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand text-white" href="../../index.html"> <img
					src="../../img/codoacodo.png" alt="Logo" width="100"
					class="d-inline-block align-text-center"> Conf Bs As
				</a>
				<button id="boton-menu" class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="fi fi-br-menu-burger"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarNavAltMarkup">
					<div class="menu-botones navbar-nav">
						<a class="hover-botones-menu nav-link text-white active "
							aria-current="page" href="../../index.html">La Conferencia</a> <a
							class="hover-botones-menu nav-link text-white"
							href="../../index.html">Los oradores</a> <a
							class="hover-botones-menu nav-link text-white"
							href="../../index.html">El lugar y la fecha</a> <a
							class="hover-botones-menu nav-link text-white"
							href="../../index.html">Conviertete en orador</a> <a
							id="hover-botones-comprartickets" class="nav-link text-white"
							href="./compratickets.html">Comprar tickets</a> <a
							id="hover-botones-comprartickets" class="nav-link text-white"
							href="./mostrarcompras.html">Ver
							Compras</a>
					</div>
				</div>
			</div>
		</nav>
	</header>


	<!-- DESCUENTO DE TICKETS -->
	<main>
		<div class="contenedor-padre-comprartickets">
			<div class="contenedor-card-comprartickets">
				<div class="card-1-comprartickets">
					<h2 class="estudiantes">Estudiantes</h2>
					<div class="parte-abajo">
						<p class="descuento">Tiene un descuento</p>
						<h2 class="porcentaje">80%</h2>
						<p class="presentar-documentacion">*Presentar documentacion</p>
					</div>
				</div>
				<div class="card-2-comprartickets">
					<h2 class="trainee">Trainee</h2>
					<div class="parte-abajo">
						<p class="descuento">Tiene un descuento</p>
						<h2 class="porcentaje">50%</h2>
						<p class="presentar-documentacion">*Presentar documentacion</p>
					</div>
				</div>
				<div class="card-3-comprartickets">
					<h2 class="junior">Junior</h2>
					<div class="parte-abajo">
						<p class="descuento">Tiene un descuento</p>
						<h2 class="porcentaje">15%</h2>
						<p class="presentar-documentacion">*Presentar documentacion</p>
					</div>
				</div>
			</div>

			<!-- COMPLETAR FORMULARIO -->

			<h3 class="titulo-venta">VENTA</h3>
			<h1 class="titulo-valor">VALOR DE TICKET $200</h1>
			<form id="formulario" action="Update.jsp" autocomplete="on"
				method="post">
				<div class="div-1">
					<input id="nombre" class="div-1-nombre" type="text" name="nombre"
						value="<%=request.getParameter("nombre")%>" placeholder="Nombre"
						required> <input id="apellido" class="div-1-apellido"
						type="text" name="apellido"
						value="<%=request.getParameter("apellido")%>"
						placeholder="Apellido" required>
				</div>
				<div class="div-2">
					<input id="mail" class="div-2-email" type="email" name="mail"
						value="<%=request.getParameter("mail")%>"
						placeholder="nombre@ejemplo.com" required>
				</div>
				<div class="div-3">
					<div class="div-3-cantidad">
						<label for="cantidad">Cantidad</label> <input type="number"
							name="cantidad" value="<%=request.getParameter("cantidad")%>"
							id="cantidad" placeholder="Cantidad" min="1" max="1000" required>
					</div>
					<div class="div-3-categoria">
						<label for="categoria">Categoria</label> <select id="categoria"
							name="categoria" required>
							<option selected><%=request.getParameter("categoria")%></option>
							<option value="Sin Categoria">Sin Categoria</option>
							<option value="Estudiante">Estudiante</option>
							<option value="Trainee">Trainee</option>
							<option value="Junior">Junior</option>
						</select>
					</div>
				</div>
				<div class="div-4">
					<p class="div-4-total">
						Total a pagar:<span id="totalPagar"></span>
					</p>

				</div>
				<div class="div-5">
					<button id="eliminar" class="btn btn-outline-danger" onclick="location.href='delete.jsp'" type="button">Eliminar</button>
					<button id="btnConfirmar" class="btn btn-outline-success" type="button" >Confirmar</button>
					<button id="modificar" class="btn btn-outline-info" type="submit">Modificar</button>
				</div>
				<!-- <div id="ticketImprimir" onclick='window.open("width=500, height=700", "target=_blank")' >

            </div> -->


				<!--VENTANA EMERGENTE CONFIRMAR COMPRA DE TICKETS-->

				<!-- Ventana emergente -->
				<div class="modal" id="resumenModal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Encabezado de la ventana emergente -->
							<div class="modal-header">
								<h5 class="modal-title">Resumen de pedido</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>

							<!-- Contenido de la ventana emergente -->
							<div class="modal-body" id="resumenPedido">
								<!-- Aquí se van a mostrar los datos ingresados -->
							</div>

							<!-- Pie de la ventana emergente -->
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Cancelar</button>
								<button type="submit" class="btn btn-primary"
									id="confirmarPedido">Confirmar pedido</button>
							</div>

						</div>
					</div>
				</div>






			</form>
	</main>
















	<!-- FOOTER -->
	<footer>
		<a class="footer uno">Preguntas frecuentes</a> <a class="footer dos">Contactanos</a>
		<a class="footer tres">Prensa</a> <a class="footer cuatro">Conferencias</a>
		<a class="footer cinco">Terminos y condiciones</a> <a
			class="footer seis">Privacidad</a> <a class="footer siete">Estudiantes</a>
	</footer>

   
	<script src="../compratickets/"></script>
	<script src="../../js/script.js"></script>
	<script src="../../js/bootstrap.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
</body>
</html>