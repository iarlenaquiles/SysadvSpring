<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="processo"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />

	<spring:bind path="cliente">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cliente">Cliente</form:label>
			<form:input path="cliente" type="hidden" cssClass="form-control"
				id="cliente" />
			<input type="text" id="nomeCliente" class="form-control"
				name="nomeCliente" value="${processo.cliente.nome }"  disabled="true"/>
			<form:errors path="cliente" />
		</div>
	</spring:bind>
	<spring:bind path="tipo_justica">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="tipo_justica">Tipo Justiça</form:label>
			<form:select path="tipo_justica" cssClass="form-control"
				disabled="true">
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
			<form:select path="tipo_processo" cssClass="form-control"
				disabled="true">
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
				cssClass="form-control" disabled="true" />
			<form:errors path="numero_processo" />
		</div>
	</spring:bind>


	<spring:bind path="ano_processo">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="ano_processo">Ano do Processo</form:label>
			<form:input path="ano_processo" type="text" cssClass="form-control"
				disabled="true" />
			<form:errors path="ano_processo" />
		</div>
	</spring:bind>

	<spring:bind path="acao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="acao">Nome da Ação</form:label>
			<form:input path="acao" type="text" cssClass="form-control"
				disabled="true" />
			<form:errors path="acao" />
		</div>
	</spring:bind>

	<spring:bind path="cidade_comarca">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cidade_comarca">Cidade Comarca</form:label>
			<form:input path="cidade_comarca" type="text" cssClass="form-control"
				disabled="true" />
			<form:errors path="cidade_comarca" />
		</div>
	</spring:bind>

	<spring:bind path="estado_comarca">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estado_comarca">Estado Comarca</form:label>
			<form:input path="estado_comarca" type="text" cssClass="form-control"
				disabled="true" />
			<form:errors path="estado_comarca" />
		</div>
	</spring:bind>

	<spring:bind path="forum">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="forum">Forúm</form:label>
			<form:input path="forum" type="text" cssClass="form-control"
				disabled="true" />
			<form:errors path="forum" />
		</div>
	</spring:bind>

	<spring:bind path="vara_subsecao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="vara_subsecao">Vara/Subseção</form:label>
			<form:select path="vara_subsecao" cssClass="form-control"
				disabled="true">
				<form:option value="">Selecione</form:option>
				<form:option value="1ª">1ª</form:option>
				<form:option value="2ª">2ª</form:option>
				<form:option value="3ª">3ª</form:option>
				<form:option value="4ª">4ª</form:option>
				<form:option value="5ª">5ª</form:option>
				<form:option value="6ª">6ª</form:option>
				<form:option value="7ª">7ª</form:option>
				<form:option value="8ª">8ª</form:option>
				<form:option value="9ª">9ª</form:option>
				<form:option value="10ª">10ª</form:option>
			</form:select>
			<form:errors path="vara_subsecao" />
		</div>
	</spring:bind>

	<spring:bind path="procedimento">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="procedimento">Procedimento</form:label>
			<form:select path="procedimento" cssClass="form-control"
				disabled="true">
				<form:option value="">Selecione</form:option>
				<form:option value="Cautelar">Cautelar</form:option>
				<form:option value="Conhecimento">Conhecimento</form:option>
				<form:option value="Execução">Execução</form:option>
				<form:option value="Jurisdição Contenciosa">Jurisdição Contenciosa</form:option>
				<form:option value="Jurisdição Voluntária">Jurisdição Voluntária</form:option>
				<form:option value="Procedimento Especial">Procedimento Especial</form:option>
				<form:option value="Procedimento Ordinário">Procedimento Ordinário</form:option>
				<form:option value="Procedimento Sumário">Procedimento Sumário</form:option>
			</form:select>
			<form:errors path="procedimento" />
		</div>
	</spring:bind>

	<spring:bind path="honorario">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="honorario">Honorário</form:label>
			<form:input path="honorario" type="text"
				cssClass="form-control moeda" data-prefixo="R$ " data-decimal=","
				disabled="true" />
			<form:errors path="honorario" />
		</div>
	</spring:bind>

	<spring:bind path="porcentagem_causa">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="porcentagem_causa">Porcentagem da causa</form:label>
			<form:input path="porcentagem_causa" type="text"
				cssClass="form-control mascara" data-formato="000%" disabled="true" />
			<form:errors path="porcentagem_causa" />
		</div>
	</spring:bind>

	<spring:bind path="observacao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="observacao">Observação</form:label>
			<form:textarea path="observacao" rows="5" cssClass="form-control"
				disabled="true" />
			<form:errors path="observacao" />
		</div>
	</spring:bind>
</form:form>