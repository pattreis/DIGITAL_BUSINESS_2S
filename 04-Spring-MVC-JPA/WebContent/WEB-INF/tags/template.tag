<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ attribute name="titulo" required="true"%>
<%@ attribute name="scripts" fragment="true"%>
<html>
<head>
<title>Spring MVC | ${titulo}</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap.min.css" />" />
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a class="navbar-brand" href="#">Apresentações FIAP</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link" href="<c:url value="/"/>">Home
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Produto </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="<c:url value="/produto/cadastrar"/>">Cadastrar</a>
									<a class="dropdown-item" href="<c:url value="/produto/listar"/>">Listar</a>
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<h1>Apresentações</h1>
		<hr />

		<jsp:doBody />

		<hr />
		<p>Todos os direitos reservados &copy; 2018.</p>
	</div>

	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.js" />"></script>

	<jsp:invoke fragment="scripts"></jsp:invoke>
</body>
</html>