<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar Contato</title>
</head>
<body>

	<div class="container">
		<h1>Cadastrar Contato</h1>
		<form action="enviar" method="post">
			<div class="form-group">
				<label class="form-control" for="nome">Nome</label> <input
					placeholder="digite o nome" type="text" name="nome" id="nome"></input>
			</div>

			<div class="form-group">
				<label class="form-control" for="telefone">Telefone</label> <input
					placeholder="digite o telefone" type="text" name="telefone"
					id="tel" maxlength="10"></input>
			</div>
			<button class="btn btn-primary" type="submit" value="Enviar"> Enviar </button>
		</form>
	</div>

</body>
</html>