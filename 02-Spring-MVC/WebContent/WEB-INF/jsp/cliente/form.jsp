<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>
<body>
	<div class="container mt-5">
		<h1> Cadastrar Cliente </h1>
		
		<form class="border p-5" action="cadastrar" method="post">
		
			<div class="form-group mb-2">
				<label for="id-nome"> Nome </label>
				<input type="text" class="form-control col-5"  placeholder="digite o nome..." name="nome" id="id-nome">
			</div>
			<div class="form-group mb-2">
				<label for="id-idade"> Idade </label> 
				<input  type="number" class="form-control col-2" placeholder="insira a idade..." name="idade" 
				id="id-idade" maxlength="10"  width="100">
			</div>
			<div class="form-check">
				<input type="checkbox" name="cnh" id="id-cnh" class="form-check-input"> 
				<label for="id-cnh"> CNH </label>
			</div>
			<div class="form-group">
				<label for="id-genero"> Gênero </label> 
				<select id="id-genero"
					name="genero" class="form-control col-5">
					<option>Feminino</option>
					<option>Masculino</option>
					<option>Outros</option>
				</select>
			</div>
			<div>
				<input type="submit" value="Enviar" class="btn btn-primary mb-2"></input>
			</div>
		</form>
	</div>

</body>
</html>
