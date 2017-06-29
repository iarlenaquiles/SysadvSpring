<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="usuario"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="username">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="username">Nome</form:label>
			<form:input path="username" type="text" cssClass="form-control" placeholder="Nome de usuário" />
			<form:errors path="username" />
		</div>
	</spring:bind>

	<spring:bind path="password">
		<div class="form-group ${status.error ? 'has-error' : ''}">
		<form:label path="password">Senha</form:label>
			<form:input type="password" path="password" class="form-control"
				placeholder="Senha"></form:input>
			<form:errors path="password"></form:errors>
		</div>
	</spring:bind>

	<spring:bind path="passwordConfirm">
		<div class="form-group ${status.error ? 'has-error' : ''}">
		<form:label path="passwordConfirm">Confirmar Senha</form:label>
			<form:input type="password" path="passwordConfirm"
				class="form-control" placeholder="Confirme sua senha"></form:input>
			<form:errors path="passwordConfirm"></form:errors>
		</div>
	</spring:bind>

	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>