<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url var="url_base" value="/" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contatos</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
<script src="${url_base}js/jquery.min.js"></script>

</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success alert-dismissible" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<p>${mensagem}</p>
			</div>
		</c:if>
		<div id="list" class="row">
			<div class="table-responsive col-md-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Nome</th>
							<th>Telefone</th>
							<th>E-mail</th>
							<th>Mensagem</th>
							<th>Departamento</th>
							<th class="actions">Ação</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${contatos}" var="contato">
							<tr>
								<td>${contato.nome}</td>
								<td>${contato.telefone}</td>
								<td>${contato.email}</td>
								<td>${contato.mensagem}</td>
								<td>${contato.nomeDept}</td>
								<td class="actions"><a class="btn btn-danger btn-sm"
									href="/contatos/${contato.idMongo}/delete"
									onclick="return confirm('Confirma remoção?')"><i
										class="fa fa-trash"></i> Remover</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<c:import url="footer.jsp"></c:import>
	<script src="${url_base}js/bootstrap.min.js"></script>
</body>
</html>