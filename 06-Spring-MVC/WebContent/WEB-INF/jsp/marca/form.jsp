<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>

<tags:template titulo="Cadastro de Marca">
	<h1>Cadastro de Marca</h1>
	
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	

	<c:url value="/marca/cadastrar" var="acao" />
	<form:form action="${acao }" method="post" commandName="marca">
		<div class="form-group">
			<form:label path="nome"> Nome</form:label>
			<form:input path="nome" cssClass="form-control" />
			<form:errors path="nome"/>
		</div>
		<input type="submit" value="Cadastrar" class="btn btn-primary">
	</form:form>

</tags:template>