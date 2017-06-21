<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="cliente"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="nome">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" type="text" cssClass="form-control" />
			<form:errors path="nome" />
		</div>
	</spring:bind>

	<spring:bind path="cpf">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cpf">CPF</form:label>
			<form:input path="cpf" type="text" cssClass="form-control" />
			<form:errors path="cpf" />
		</div>
	</spring:bind>

	<spring:bind path="data">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="data">Data de nascimento</form:label>
			<form:input path="data" type="date" cssClass="form-control" />
			<form:errors path="data" />
		</div>
	</spring:bind>
	
	<spring:bind path="estadoCivil">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoCivil">Estado civil</form:label>
			<form:input path="estadoCivil" type="text" cssClass="form-control" />
			<form:errors path="estadoCivil" />
		</div>
	</spring:bind>
	
	<spring:bind path="numeroRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numeroRg">Número de RG</form:label>
			<form:input path="numeroRg" type="text" cssClass="form-control" />
			<form:errors path="numeroRg" />
		</div>
	</spring:bind>
	
	<spring:bind path="profissao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="profissao">Profissão</form:label>
			<form:input path="profissao" type="text" cssClass="form-control" />
			<form:errors path="profissao" />
		</div>
	</spring:bind>
	
	<spring:bind path="naturalidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="naturalidade">Naturalidade</form:label>
			<form:input path="naturalidade" type="text" cssClass="form-control" />
			<form:errors path="naturalidade" />
		</div>
	</spring:bind>
	
	<spring:bind path="nacionalidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nacionalidade">Nacionalidade</form:label>
			<form:input path="nacionalidade" type="text" cssClass="form-control" />
			<form:errors path="nacionalidade" />
		</div>
	</spring:bind>
	
	
	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>