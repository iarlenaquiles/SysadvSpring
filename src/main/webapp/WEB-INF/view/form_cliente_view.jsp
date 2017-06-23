<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="cliente"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="nome">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nome">Nome</form:label>
			<form:input path="nome" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="nome" />
		</div>
	</spring:bind>
	
	<spring:bind path="email">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="email">E-mail</form:label>
			<form:input path="email" type="email" cssClass="form-control" disabled="true" />
			<form:errors path="email" />
		</div>
	</spring:bind>

	<spring:bind path="cpf">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cpf">CPF</form:label>
			<form:input path="cpf" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="cpf" />
		</div>
	</spring:bind>

	<spring:bind path="data">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="data">Data de nascimento</form:label>
			<form:input path="data" type="date" cssClass="form-control" disabled="true" />
			<form:errors path="data" />
		</div>
	</spring:bind>
	
	<spring:bind path="nomePai">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nomePai">Nome do pai</form:label>
			<form:input path="nomePai" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="nomePai" />
		</div>
	</spring:bind>
	
	<spring:bind path="nomeMae">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nomeMae">Nome da mãe</form:label>
			<form:input path="nomeMae" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="nomeMae" />
		</div>
	</spring:bind>
	
	<spring:bind path="telefone">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="telefone">Telefone</form:label>
			<form:input path="telefone" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="telefone" />
		</div>
	</spring:bind>
	
	
	<spring:bind path="estadoCivil">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoCivil">Estado civil</form:label>
			<form:input path="estadoCivil" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="estadoCivil" />
		</div>
	</spring:bind>
	
	<spring:bind path="profissao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="profissao">Profissão</form:label>
			<form:input path="profissao" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="profissao" />
		</div>
	</spring:bind>
	
	<spring:bind path="naturalidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="naturalidade">Naturalidade</form:label>
			<form:input path="naturalidade" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="naturalidade" />
		</div>
	</spring:bind>
	
	<spring:bind path="nacionalidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nacionalidade">Nacionalidade</form:label>
			<form:input path="nacionalidade" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="nacionalidade" />
		</div>
	</spring:bind>
	
	<spring:bind path="numeroRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numeroRg">Número de RG</form:label>
			<form:input path="numeroRg" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="numeroRg" />
		</div>
	</spring:bind>
	
	<spring:bind path="dataExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="dataExpedicaoRg">Data Expedicão do RG</form:label>
			<form:input path="dataExpedicaoRg" type="date" cssClass="form-control" disabled="true" />
			<form:errors path="dataExpedicaoRg" />
		</div>
	</spring:bind>
	
	<spring:bind path="orgaoExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="orgaoExpedicaoRg">Orgão Expedicão RG</form:label>
			<form:input path="orgaoExpedicaoRg" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="orgaoExpedicaoRg" />
		</div>
	</spring:bind>
	
	<spring:bind path="estadoExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoExpedicaoRg">Estado Expedicão RG</form:label>
			<form:input path="estadoExpedicaoRg" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="estadoExpedicaoRg" />
		</div>
	</spring:bind>
	
	<spring:bind path="numeroCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numeroCtps">Número CTPS</form:label>
			<form:input path="numeroCtps" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="numeroCtps" />
		</div>
	</spring:bind>	
	
	<spring:bind path="serieCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="serieCtps">Série CTPS</form:label>
			<form:input path="serieCtps" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="serieCtps" />
		</div>
	</spring:bind>	
	
	<spring:bind path="estadoExpedicaoCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoExpedicaoCtps">Estado Expedicão CTPS</form:label>
			<form:input path="estadoExpedicaoCtps" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="estadoExpedicaoCtps" />
		</div>
	</spring:bind>
	
	<spring:bind path="cep">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cep">CEP</form:label>
			<form:input path="cep" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="cep" />
		</div>
	</spring:bind>
	
	<spring:bind path="rua">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="rua">Rua</form:label>
			<form:input path="rua" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="rua" />
		</div>
	</spring:bind>
	
	<spring:bind path="numero">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numero">Número</form:label>
			<form:input path="numero" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="numero" />
		</div>
	</spring:bind>
	
	<spring:bind path="bairro">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="bairro">Bairro</form:label>
			<form:input path="bairro" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="bairro" />
		</div>
	</spring:bind>
	
	<spring:bind path="complemento">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="complemento">Complemento</form:label>
			<form:input path="complemento" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="complemento" />
		</div>
	</spring:bind>
	
	<spring:bind path="cidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cidade">Cidade</form:label>
			<form:input path="cidade" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="cidade" />
		</div>
	</spring:bind>
	
	<spring:bind path="estado">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estado">Estado</form:label>
			<form:input path="estado" type="text" cssClass="form-control" disabled="true" />
			<form:errors path="estado" />
		</div>
	</spring:bind>
	
	<spring:bind path="observacao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="observacao">Observação</form:label>
			<form:textarea path="observacao" rows="5" cssClass="form-control" disabled="true" />
			<form:errors path="observacao" />
		</div>
	</spring:bind>

</form:form>