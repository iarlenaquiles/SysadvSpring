<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form:form method="post" modelAttribute="processo"
	action="${url_base}${acao}">
	<form:input path="id" type="hidden" />
	<spring:bind path="idCliente">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="idCliente">Cliente</form:label>
			<form:input path="idCliente" type="hidden" cssClass="form-control"
				id="idCliente" />
			<input type="text" id="nomeCliente" class="form-control"
				name="nomeCliente" />
			<form:errors path="idCliente" />
		</div>
	</spring:bind>

	<spring:bind path="tipo_justica">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="tipo_justica">Tipo Justi�a</form:label>
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
				<form:option value="C�vel">C�vel</form:option>
				<form:option value="Criminal">Criminal</form:option>
				<form:option value="Eleitoral">Eleitoral</form:option>
				<form:option value="Previdenci�rio">Previdenci�rio</form:option>
				<form:option value="Trabalhista">Trabalhista</form:option>
			</form:select>
			<form:errors path="tipo_processo" />
		</div>
	</spring:bind>

	<spring:bind path="numero_processo">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numero_processo">N�mero do Processo</form:label>
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

	<spring:bind path="acao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="acao">Nome da A��o</form:label>
			<form:input path="acao" type="text" cssClass="form-control" />
			<form:errors path="acao" />
		</div>
	</spring:bind>

	<spring:bind path="cidade_comarca">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cidade_comarca">Cidade Comarca</form:label>
			<form:input path="cidade_comarca" type="text" cssClass="form-control" />
			<form:errors path="cidade_comarca" />
		</div>
	</spring:bind>

	<spring:bind path="estado_comarca">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estado_comarca">Estado Comarca</form:label>
			<form:input path="estado_comarca" type="text" cssClass="form-control" />
			<form:errors path="estado_comarca" />
		</div>
	</spring:bind>

	<spring:bind path="forum">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="forum">For�m</form:label>
			<form:input path="forum" type="text" cssClass="form-control" />
			<form:errors path="forum" />
		</div>
	</spring:bind>

	<spring:bind path="vara_subsecao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="vara_subsecao">Vara/Subse��o</form:label>
			<form:select path="vara_subsecao" cssClass="form-control">
				<form:option value="">Selecione</form:option>
				<form:option value="1�">1�</form:option>
				<form:option value="2�">2�</form:option>
				<form:option value="3�">3�</form:option>
				<form:option value="4�">4�</form:option>
				<form:option value="5�">5�</form:option>
				<form:option value="6�">6�</form:option>
				<form:option value="7�">7�</form:option>
				<form:option value="8�">8�</form:option>
				<form:option value="9�">9�</form:option>
				<form:option value="10�">10�</form:option>
			</form:select>
			<form:errors path="vara_subsecao" />
		</div>
	</spring:bind>

	<spring:bind path="procedimento">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="procedimento">Procedimento</form:label>
			<form:select path="procedimento" cssClass="form-control">
				<form:option value="">Selecione</form:option>
				<form:option value="Cautelar">Cautelar</form:option>
				<form:option value="Conhecimento">Conhecimento</form:option>
				<form:option value="Execu��o">Execu��o</form:option>
				<form:option value="Jurisdi��o Contenciosa">Jurisdi��o Contenciosa</form:option>
				<form:option value="Jurisdi��o Volunt�ria">Jurisdi��o Volunt�ria</form:option>
				<form:option value="Procedimento Especial">Procedimento Especial</form:option>
				<form:option value="Procedimento Ordin�rio">Procedimento Ordin�rio</form:option>
				<form:option value="Procedimento Sum�rio">Procedimento Sum�rio</form:option>
			</form:select>
			<form:errors path="procedimento" />
		</div>
	</spring:bind>

	<spring:bind path="honorario">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="honorario">Honor�rio</form:label>
			<form:input path="honorario" type="text"
				cssClass="form-control moeda" data-prefixo="R$ " data-decimal="," />
			<form:errors path="honorario" />
		</div>
	</spring:bind>

	<spring:bind path="porcentagem_causa">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="porcentagem_causa">Porcentagem da causa</form:label>
			<form:input path="porcentagem_causa" type="text"
				cssClass="form-control mascara" data-formato="000%" />
			<form:errors path="porcentagem_causa" />
		</div>
	</spring:bind>

	<spring:bind path="observacao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="observacao">Observa��o</form:label>
			<form:textarea path="observacao" rows="5" cssClass="form-control" />
			<form:errors path="observacao" />
		</div>
	</spring:bind>

	<button type="submit" class="btn btn-primary">Salvar</button>
</form:form>