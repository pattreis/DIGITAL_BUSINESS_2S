<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	function setCodigo(valor) {
		console.log(valor)
		document.getElementById("idCodigoProduto").value = valor;
	}
</script>

<tags:template titulo="Lista de Produtos">
	<h1>Lista de Produtos</h1>
	<c:if test="${ not empty msg }">
		<div class="alert alert-success">${ msg }</div>
	</c:if>
	<table class="table">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Preço</th>
			<th>Perecível</th>
			<th></th>
		</tr>
		<c:forEach items="${produtos }" var="p">
			<tr>
				<td>${p.codigo }</td>
				<td>${p.nome }</td>
				<td>${p.preco }</td>
				<td>${p.perecivel?"Sim":"Não" }</td>
				<td><a href="<c:url value="/produto/editar/${p.codigo}"/>">Editar</a>
				</td>
				<td><input value="Excluir" type="button"
					class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal" onclick="setCodigo(${p.codigo})" /></td>
			</tr>
		</c:forEach>
	</table>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Excluir</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Deseja realmente excluir o registro?</div>
				<div class="modal-footer">
				
					<form method="post" action="remover">					
						<input type="hidden" id="idCodigoProduto" name="codigo">
						<button type="submit" class="btn btn-primary">Save
							changes</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</form>
				</div>
			</div>
		</div>
	</div>


</tags:template>