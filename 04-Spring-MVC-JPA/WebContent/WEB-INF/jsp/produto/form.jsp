<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Cadastrar Produto">

	<jsp:body>
	
	
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>	
	</c:if>
		<form method="post" action="cadastrar">
			<div class="form-group">
				<label for="id-nmProduto">Nome Produto</label>
				<input type="text" class="form-control col-sm-3" name="nome" id="id-nmProduto" placeholder="Digite o nome aqui...">
			</div>
			
			<div class="form-group">
				<label for="id-preco">Preço</label>
				<input type="number" class="form-control col-sm-2" name="preco" id="id-preco" placeholder="Digite o preco...">
			</div>
			
			<div class="form-group">				
				<label for="id-perecivel">
					<input type="checkbox" name="perecivel" id="id-perecivel">
					Perecível
				</label>
			</div>
			<input type="submit" value="Cadastrar" class="btn btn-primary">
		</form>	
	
	
	</jsp:body>

</tags:template>