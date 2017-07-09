<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<spring:bind path="email">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="email">E-mail</form:label>
			<form:input path="email" type="email" cssClass="form-control" />
			<form:errors path="email" />
		</div>
	</spring:bind>

	<spring:bind path="cpf">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cpf">CPF</form:label>
			<form:input path="cpf" type="text"
				cssClass="form-control cpf validar-cpf" id="cpf"
				data-msn_validacao="Preencha um cpf v�lido." />
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

	<spring:bind path="nomePai">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nomePai">Nome do pai</form:label>
			<form:input path="nomePai" type="text" cssClass="form-control" />
			<form:errors path="nomePai" />
		</div>
	</spring:bind>

	<spring:bind path="nomeMae">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="nomeMae">Nome da m�e</form:label>
			<form:input path="nomeMae" type="text" cssClass="form-control" />
			<form:errors path="nomeMae" />
		</div>
	</spring:bind>

	<spring:bind path="telefone">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="telefone">Telefone</form:label>
			<form:input path="telefone" type="text"
				cssClass="form-control telefone" />
			<form:errors path="telefone" />
		</div>
	</spring:bind>

	<spring:bind path="estadoCivil">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoCivil">Estado civil</form:label>
			<form:select path="estadoCivil" cssClass="form-control">
				<form:option value="">Selecione</form:option>
				<form:option value="Solteiro">Solteiro</form:option>
				<form:option value="Casado">Casado</form:option>
				<form:option value="Separado">Separado</form:option>
				<form:option value="Divorciado">Divorciado</form:option>
				<form:option value="Vi�vo">Vi�vo</form:option>
				<form:option value="Uni�o Est�vel">Uni�o Est�vel</form:option>
			</form:select>
			<form:errors path="estadoCivil" />
		</div>
	</spring:bind>

	<spring:bind path="profissao">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="profissao">Profiss�o</form:label>
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

	<spring:bind path="numeroRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numeroRg">N�mero de RG</form:label>
			<form:input path="numeroRg" type="text"
				cssClass="form-control inteiro" />
			<form:errors path="numeroRg" />
		</div>
	</spring:bind>

	<spring:bind path="dataExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="dataExpedicaoRg">Data Expedic�o do RG</form:label>
			<form:input path="dataExpedicaoRg" type="date"
				cssClass="form-control" />
			<form:errors path="dataExpedicaoRg" />
		</div>
	</spring:bind>

	<spring:bind path="orgaoExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="orgaoExpedicaoRg">Org�o Expedic�o RG</form:label>
			<form:input path="orgaoExpedicaoRg" type="text"
				cssClass="form-control" />
			<form:errors path="orgaoExpedicaoRg" />
		</div>
	</spring:bind>

	<spring:bind path="estadoExpedicaoRg">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoExpedicaoRg">Estado Expedic�o RG</form:label>
			<form:input path="estadoExpedicaoRg" type="hidden" cssClass="form-control"
				id="idEstadoExpedicaoRg" />
				<input type="text" id="estadoExpedicaoRg" class="form-control"
				name="estadoExpedicaoRg" value="${cliente.estadoExpedicaoRg.nome}"/>
			<form:errors path="estadoExpedicaoRg" />
		</div>
	</spring:bind>

	<spring:bind path="numeroCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numeroCtps">N�mero CTPS</form:label>
			<form:input path="numeroCtps" type="text"
				cssClass="form-control inteiro" />
			<form:errors path="numeroCtps" />
		</div>
	</spring:bind>

	<spring:bind path="serieCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="serieCtps">S�rie CTPS</form:label>
			<form:input path="serieCtps" type="text" cssClass="form-control" />
			<form:errors path="serieCtps" />
		</div>
	</spring:bind>

	<spring:bind path="estadoExpedicaoCtps">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estadoExpedicaoCtps">Estado Expedic�o CTPS</form:label>
			<form:input path="estadoExpedicaoCtps" type="hidden" cssClass="form-control"
				id="idEstadoExpedicaoCtps" />
				<input type="text" id="estadoExpedicaoCtps" class="form-control"
				name="estadoExpedicaoCtps" value="${cliente.estadoExpedicaoCtps.nome}"/>
			<form:errors path="estadoExpedicaoCtps" />
		</div>
	</spring:bind>

	<spring:bind path="cep">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cep">CEP</form:label>
			<form:input path="cep" type="text"
				cssClass="form-control cep buscar_endereco" data-prefixo="en_" />
			<form:errors path="cep" />
		</div>
	</spring:bind>

	<spring:bind path="rua">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="rua">Rua</form:label>
			<form:input path="rua" type="text"
				cssClass="form-control en_logradouro" />
			<form:errors path="rua" />
		</div>
	</spring:bind>

	<spring:bind path="numero">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="numero">N�mero</form:label>
			<form:input path="numero" type="text" cssClass="form-control inteiro" />
			<form:errors path="numero" />
		</div>
	</spring:bind>

	<spring:bind path="bairro">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="bairro">Bairro</form:label>
			<form:input path="bairro" type="text"
				cssClass="form-control en_bairro" />
			<form:errors path="bairro" />
		</div>
	</spring:bind>

	<spring:bind path="complemento">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="complemento">Complemento</form:label>
			<form:input path="complemento" type="text" cssClass="form-control" />
			<form:errors path="complemento" />
		</div>
	</spring:bind>

	<spring:bind path="cidade">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="cidade">Cidade</form:label>
			<form:select path="cidade" cssClass="form-control en_cidade"
				id="cidade">
				<form:option value="">Selecione</form:option>
				<c:if test="not empty {cliente.cidade.id}">
					<form:option value="${cliente.cidade.id}">${cliente.cidade.nome}</form:option>
				</c:if>
			</form:select>
			<form:errors path="cidade" />
		</div>
	</spring:bind>

	<spring:bind path="estado">
		<div class="form-group ${status.error ? 'has-error' : ''}">
			<form:label path="estado">Estado</form:label>
			<form:input path="estado" type="hidden" cssClass="form-control"
				id="idestado" />
				<input type="text" id="estado" class="form-control"
				name="estado" value="${cliente.estado.nome}"/>
			<form:errors path="estado" />
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