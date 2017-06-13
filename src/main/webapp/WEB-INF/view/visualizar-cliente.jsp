<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Visualizar Cliente</title>
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../../font-awesome/css/font-awesome.min.css">
<script src="../../js/jquery.min.js"></script>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<br>
	<br>
	<div class="container">
		<h1>Cliente:</h1>
		<h3>${cliente.id},${cliente.nome}</h3>
	</div>
	<script src="../../js/bootstrap.min.js"></script>
</body>
</html>