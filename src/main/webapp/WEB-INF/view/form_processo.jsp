<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="processo"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="tipo_justica">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="tipo_justica">Tipo Justiça</form:label>
			<form:select path="tipo_justica" cssClass="form-control">
				<form:option value="">Selecione</form:option>
				<form:option value="Municipal">Municipal</form:option>
				<form:option value="Estadual">Estadual</form:option>
				<form:option value="Federal">Federal</form:option>
				<form:option value="Processo Administrativo">Processo Administrativo</form:option>
				<form:option value="Trabalhista">Trabalhista</form:option>
			</form:select>
			<form:errors path="tipo_justica" />
		</div>
	</spring:bind>

	<spring:bind path="tipo_processo">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="tipo_processo">Tipo Processo</form:label>
			<form:select path="tipo_processo" cssClass="form-control">
				<form:option value="">Selecione</form:option>
				<form:option value="Administrativo">Administrativo</form:option>
				<form:option value="Ambiental">Ambiental</form:option>
				<form:option value="Cível">Cível</form:option>
				<form:option value="Criminal">Criminal</form:option>
				<form:option value="Eleitoral">Eleitoral</form:option>
				<form:option value="Previdenciário">Previdenciário</form:option>
				<form:option value="Trabalhista">Trabalhista</form:option>
			</form:select>
			<form:errors path="tipo_processo" />
		</div>
	</spring:bind>

	<spring:bind path="numero_processo">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numero_processo">Número do Processo</form:label>
			<form:input path="numero_processo" type="text"
				cssClass="form-control" />
			<form:errors path="numero_processo" />
		</div>
	</spring:bind>


	<spring:bind path="ano_processo">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="ano_processo">Ano do Processo</form:label>
			<form:input path="ano_processo" type="text" cssClass="form-control" />
			<form:errors path="ano_processo" />
		</div>
	</spring:bind>


	<spring:bind path="observacao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="observacao">Observação</form:label>
			<form:textarea path="observacao" rows="5" cssClass="form-control" />
			<form:errors path="observacao" />
		</div>
	</spring:bind>

	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>