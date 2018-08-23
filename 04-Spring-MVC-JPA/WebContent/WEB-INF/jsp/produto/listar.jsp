<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<tags:template titulo="Listar Produto">

	<jsp:body>
	
	
		<table class="table table-sm">
		
		<thead>
			<tr>
				<th>Codigo</th>
				<th>Nome</th>
				<th>Valor</th>
				<th>Perecível</th>
			</tr>
		</thead>
		<tbody>			
			<c:forEach var="lista" items="${lista}">
            <tr>
            	<td>${lista.codigo}</td>
                <td>${lista.nome}</td>
                <td>${lista.preco}</td>
                <td>${lista.perecivel ? "SIM" : "NÃO"}</td>
            </tr>
        </c:forEach>
        
		</tbody>
		</table>
	
	
	</jsp:body>

</tags:template>