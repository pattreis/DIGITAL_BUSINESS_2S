<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tags:template titulo="Editar Produto">

	<c:url var="link" value="/produto/editar"/>
	<form:form action="${link}" method="post" commandName="produto">
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="preco">Pre�o</form:label>
			<form:input path="preco" cssClass="form-control"/>
		</div>
		<div class="form-group">
			<form:checkbox path="perecivel"/>
			<form:label path="perecivel">Perec�vel</form:label>
		</div>
		<input type="submit" value="Editar" class="btn btn-primary">
	</form:form>

</tags:template>