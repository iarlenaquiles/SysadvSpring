<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url_base" value="/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Departamento</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
<script src="${url_base}js/jquery.min.js"></script>
<script src="${url_base}js/jquery.easy-autocomplete.min.js"></script>
<link href="${url_base}css/easy-autocomplete.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<h2>Editar Departamento</h2>
		<jsp:include page="form_departamento.jsp" />
	</div>
	<br>
	<br>
	<br>
	<c:import url="footer.jsp"></c:import>
	<script src="${url_base}js/bootstrap.min.js"></script>
	<script src="${url_base}js/app.js"></script>
</body>
</html>