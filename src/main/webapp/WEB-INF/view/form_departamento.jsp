<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="departamento"
	action="${url_base}${acao}">

	<form:input path="idMongo" type="hidden" />
	
	<spring:bind path="nome">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" type="text" cssClass="form-control" />
			<form:errors path="nome" />
		</div>
	</spring:bind>

	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>