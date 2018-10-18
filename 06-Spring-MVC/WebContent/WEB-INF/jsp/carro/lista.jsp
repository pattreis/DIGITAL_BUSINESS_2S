<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<tags:template titulo="Lista">
	<h1>Carros Cadastrados</h1>

	<table class="table">
		<thead>
			<tr>
				<th>Modelo</th>
				<th>Marca</th>
				<th>Data Fabricação</th>
				<th>Completo</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${carros}" var="c">
				<tr>
					<td>${c.modelo }</td>
					<td>${c.marca.nome }</td>
					<td> <fmt:formatDate value="${c.dataFabricacao.time }" pattern="dd/MM/yyyy"/>
						</td>
					<td>${c.completo? "Sim": "Nao" }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</tags:template>