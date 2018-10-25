<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
    
<tags:template titulo="Cadastro de Jogo">
<c:if test="${not empty msg }">
	<div class="alert alert-success">
	 	${msg }
	</div>
</c:if>

	<c:url value="/jogo/cadastrar" var="acao"/>
	<form:form action="${ acao }" method="post" commandName="jogo">
	
		<div class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" cssClass="form-control col-6"/>
		</div>	
		
		<div class="form-group">
			<form:label path="dataLancamento">Data Lancamento</form:label>
			<form:input path="dataLancamento" cssClass="form-control col-3"/>
		</div>	
		
		<div class="form-group">
			<form:checkbox path="disponivel" />
			<form:label path="disponivel">Disponivel</form:label>			
		</div>
		
		<div class="form-group">
		<form:label path="plataforma">Plataforma</form:label>			
			<form:select path="plataforma" cssClass="form-control col-3">
				<form:option value="">Selecione</form:option>
				<form:options items="${ plataformas }" 
				itemLabel="Label" />
			</form:select>
		</div>
		
		<div class="form-group">
			<form:label path="genero">Gênero</form:label>			
			<form:select path="genero.codigo" cssClass="form-control col-3">
				<form:option value="0">Selecione</form:option>
				<form:options items="${ generos }" 
				itemLabel="nome" itemValue="codigo"/>
			</form:select>
		</div>
		
		<input type="submit" value="Cadastrar" class="btn btn-primary"/>
	</form:form>

</tags:template>