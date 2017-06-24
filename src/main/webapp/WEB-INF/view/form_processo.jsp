<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="processo"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="observacao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="observacao">Observação</form:label>
			<form:textarea path="observacao" rows="5" cssClass="form-control" />
			<form:errors path="observacao" />
		</div>
	</spring:bind>

	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>