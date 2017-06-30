<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url_base" value="/" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Painel</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<link href="${url_base}css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="${url_base}font-awesome/css/font-awesome.min.css">
<script src="${url_base}js/jquery.min.js"></script>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<div class="row state-overview">
			<a href="/processos">
				<div class="col-lg-4 col-sm-6">
					<section class="panel">
					<div class="symbol red">
						<i class="fa fa-legal"></i>
					</div>
					<div class="value">
						<h1>${qtd_processo}</h1>

						<p>Processos</p>
					</div>
					</section>
				</div>
			</a> <a href="/clientes">
				<div class="col-lg-4 col-sm-6">
					<section class="panel">
					<div class="symbol green">
						<i class="fa fa-user"></i>
					</div>
					<div class="value">
						<h1>${qtd_cliente}</h1>
						<p>Clientes</p>
					</div>
					</section>
				</div>
			</a> <a href="/usuarios">
				<div class="col-lg-4 col-sm-6">
					<section class="panel">
					<div class="symbol blue">
						<i class="fa fa-users"></i>
					</div>
					<div class="value">
						<h1>${qtd_user}</h1>
						<p>Usuários</p>
					</div>
					</section>
				</div>
			</a>

		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
	<script src="${url_base}js/bootstrap.min.js"></script>
	<script src="${url_base}js/app.js"></script>
	<script src="${url_base}js/count.js"></script>
</body>
</html>