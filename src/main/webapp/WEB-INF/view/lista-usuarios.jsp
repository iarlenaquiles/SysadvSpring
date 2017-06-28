<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url var="url_base" value="/" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuarios</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="${url_base}font-awesome/css/font-awesome.min.css">
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
		<div class="row">
			<div class="col-lg-4">
				<a class="btn btn-primary btn-lg" href="/usuarios/add"><i
					class="fa fa-plus"></i>Novo Usuário</a>
			</div>

		</div>


		<div id="list" class="row">
			<div class="table-responsive col-md-12">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Username</th>
							<th class="actions">Ações</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${usuarios}" var="usuario">
							<tr>
								<td>${usuario.username}</td>
								
								<td class="actions"><a class="btn btn-success btn-sm"
									href="/usuarios/${usuario.id}/view"><i class="fa fa-eye"></i>
										Visualizar</a> <a class="btn btn-warning btn-sm"
									href="/usuarios/${usuario.id}/update"><i
										class="fa fa-pencil"></i> Editar</a> <a
									class="btn btn-danger btn-sm"
									href="/usuarios/${usuario.id}/delete"
									onclick="return confirm('Confirma remoção?')"><i
										class="fa fa-trash"></i> Remover</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="${url_base}js/bootstrap.min.js"></script>
</body>
</html>