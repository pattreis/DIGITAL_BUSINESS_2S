<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Lista de Convidados">

	<h1>Lista de Convidados</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success">${ msg }</div>
	</c:if>
	<table class="table">
		<tr>
			<th>C�digo</th>
			<th>Nome</th>
			<th>E-mail</th>
			<th>Confirmado</th>
			<th></th>
		</tr>
		<c:forEach items="${convidados }" var="c">
			<tr>
				<td>${c.codigo }</td>
				<td>${c.nome }</td>
				<td>${c.email }</td>
				<td>${c.confirmado?"Sim":"N�o" }</td>
				<td>
					<button ${c.confirmado?"disabled":"" } onclick="codigoConvidado.value = ${c.codigo}" type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModalConfirmar">Confirmar</button>
					<button ${!c.confirmado?"disabled":"" } onclick="codigoConvidadoExcluir.value = ${c.codigo}" type="button" class="btn btn-outline-danger" data-toggle="modal"data-target="#exampleModalExcluir">Excluir</button> 
					<a href="<c:url value="/convidado/editar/${c.codigo}"/>"class="btn btn-outline-primary">Editar</a>
				</td>
			</tr>
		</c:forEach>
	</table>

	<!-- Button trigger modal -->

	<!-- Modal Confirmar-->
	<div class="modal fade" id="exampleModalConfirmar" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirma��o</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Deseja realmente confirmar a presen�a?
				</div>
				<div class="modal-footer">
					<form action="<c:url value="/convidado/confirmar"/>" method="post">
						<input type="hidden" id="codigoConvidado" name="id">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">N�o</button>
						<button type="submit" class="btn btn-success">Sim</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal Excluir-->
	<div class="modal fade" id="exampleModalExcluir" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Confirma��o</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">Deseja realmente excluir o convidado?
				</div>
				<div class="modal-footer">
					<form action="<c:url value="/convidado/excluir"/>" method="post">
						<input type="hidden" id="codigoConvidadoExcluir" name="codigo">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">N�o</button>
						<button type="submit" class="btn btn-success">Sim</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</tags:template>