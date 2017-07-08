<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url_base" value="/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<link href="${url_base}css/modern-business.css" rel="stylesheet">
<link rel="stylesheet"
	href="${url_base}font-awesome/css/font-awesome.min.css">
<script src="${url_base}js/jquery.min.js"></script>
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contato - Sysadv</title>
</head>
<body>
	<c:import url="header-sysadv.jsp"></c:import>
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">
					Contato
				</h1>
				<ol class="breadcrumb">
					<li><a href="/sysadv">Home</a></li>
					<li class="active">Contato</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">
			<!-- Map Column -->
			<div class="col-md-8">
				<!-- Embedded Google Map -->
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2363.4307686943243!2d-39.018928175875125!3d-4.972728324778442!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7be9fc6224d2dbd%3A0x50864309b1738afb!2sTv.+Jos%C3%A9+Viana+Souza%2C+151+-+Centro%2C+Quixad%C3%A1+-+CE%2C+63900-000!5e0!3m2!1spt-BR!2sbr!4v1498840956458"
					width="600" height="450" frameborder="0" style="border: 0"
					allowfullscreen></iframe>
			</div>
			<!-- Contact Details Column -->
			<div class="col-md-4">
				<h3>Detalhes do contato</h3>
				<p>
					Travessa José Viana<br>Quixadá, CE<br>
				</p>
				<p>
					<i class="fa fa-phone"></i> <abbr title="Phone"></abbr>: (85)
					1111-1111
				</p>
				<p>
					<i class="fa fa-envelope-o"></i> <abbr title="Email"></abbr>: <a
						href="mailto:name@example.com">aquiles@sysadv.com</a>
				</p>
				<p>
					<i class="fa fa-clock-o"></i> <abbr title="Hours"></abbr>: Segunda
					- Sexta: 8:00 às 17:00
				</p>
				<ul class="list-unstyled list-inline list-social-icons">
					<li><a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-linkedin-square fa-2x"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- /.row -->

		<!-- Contact Form -->
		<!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
		<div class="row">
			<div class="col-md-8">
				<h3>Envie a sua mensagem</h3>
				<form name="sentMessage" id="contactForm" novalidate>
					<div class="control-group form-group">
						<div class="controls">
							<label>Nome:</label> <input type="text" class="form-control"
								id="name" required>
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Telefone:</label> <input type="tel"
								class="form-control" id="phone" required
								data-validation-required-message="Please enter your phone number.">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Email:</label> <input type="email"
								class="form-control" id="email" required
								data-validation-required-message="Please enter your email address.">
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Mensagem:</label>
							<textarea rows="10" cols="100" class="form-control" id="message"
								required
								data-validation-required-message="Please enter your message"
								maxlength="999" style="resize: none"></textarea>
						</div>
					</div>
					<div id="success"></div>
					<!-- For success/fail messages -->
					<button type="submit" class="btn btn-primary">Enviar Mensagem</button>
				</form>
			</div>

		</div>

		<c:import url="footer-sysadv.jsp"></c:import>
		<script src="${url_base}js/bootstrap.min.js"></script>
</body>
</html>