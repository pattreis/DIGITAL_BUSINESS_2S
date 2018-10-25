<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Lista de Jogos">

	<table class="table">
		
		<tr>
			<th>Codigo</th>
			<th>Nome</th>
			<th>Lançamento</th>
			<th>Disponível</th>
			<th>Plataforma</th>
			<th>Genero</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<tbody>
			<c:forEach items="${ jogos }" var="jogo">

				<tr>
					<td>${jogo.codigo}</td>
					<td>${jogo.nome}</td>
					<td>
						<fmt:formatDate value="${jogo.dataLancamento.time }" pattern="dd/MM/yyyy"/> 
					</td>
					<td>${jogo.disponivel ? "sim":"Não"}</td>
					<td>${jogo.plataforma.label}</td>
					<td>${jogo.genero.nome}</td>
					<td><input type="button" class="btn btn-primary" value="Atualizar"/></td>
					<td><input type="button" class="btn btn-success" value="Disponivel"/></td>
					<td><input type="button" class="btn btn-danger" value="Remover"/></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>


</tags:template>