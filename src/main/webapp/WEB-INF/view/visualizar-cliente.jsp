<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url_base" value="/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Visualizar Cliente</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
<script src="${url_base}js/jquery.min.js"></script>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<h1>Cliente</h1>
		<jsp:include page="form_cliente_view.jsp" />
	</div>
	<br>
	<br>
	<br>
	<c:import url="footer.jsp"></c:import>
	<script src="${url_base}js/bootstrap.min.js"></script>
	<script src="${url_base}js/formzin-1.0.4.js"></script>
	<script type="text/javascript"> Formzin.iniciar(); </script>
</body>
</html>