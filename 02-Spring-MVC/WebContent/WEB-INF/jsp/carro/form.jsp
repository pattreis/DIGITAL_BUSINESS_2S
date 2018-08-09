<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cadastrar</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>
<body>

	<div class="container mt-5">
	
		<h1>Cadastrar Carro</h1>
		
		<form class="border p-5" action="cadastrar" method="post">
		
			<div class="form-group mb-2">
				<label for="id-modelo"> Modelo </label> <input type="text"
					id="id-modelo" name="modelo" placeholder="Modelo do carro"
					class="form-control col-5">
			</div>
			<div class="form-group mb-2">
				<label for="id-marca"> Marca </label> <input type="text"
					id="id-marca" name="marca" placeholder="Marca do carro"
					class="form-control col-5">
			</div>

			<div class="form-group">
				<input type="checkbox" id="id-novo" name="novo"></input> <label for="id-novo">
					Novo </label>
			</div>

			<div class="form-check">
				<input type="radio" id="id-cambio" name="cambio"
					class="form-check-input" value="AUTOMATICO"> <label
					for="id-cambio">Automatico</label>
			</div>
			<div class="form-check">
				<input type="radio" id="id-cambio" name="cambio"
					class="form-check-input" value="MANUAL"> <label
					for="id-cambio"> Manual </label>
			</div>

			<div class="form-group">
				<label for="id-marca">Ano</label> <input type="number" maxlength="4"
					id="id-ano" name="ano" placeholder="Ano do carro"
					class="form-control col-3">
			</div>
			<div>
				<input type="submit" value="Cadastrar" class="btn btn-primary mb-2"></input>
			</div>
		</form>
	</div>

</body>
</html>