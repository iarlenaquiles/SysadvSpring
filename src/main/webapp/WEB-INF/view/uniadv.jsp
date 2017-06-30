<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url var="url_base" value="/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Uniadv</title>
<link href="${url_base}css/bootstrap.min.css" rel="stylesheet">
<link href="${url_base}css/modern-business.css" rel="stylesheet">
<link rel="stylesheet"
	href="${url_base}font-awesome/css/font-awesome.min.css">
<script src="${url_base}js/jquery.min.js"></script>
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
</head>
<body>
	<c:import url="header-uniadv.jsp"></c:import>
	<div class="container">

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Bem-vindo à Uniadv</h1>
			</div>
			<div class="col-md-4"> 
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>
							<i class="fa fa-check"></i> Bootstrap v3.3.7
						</h4>
					</div>
					<div class="panel-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Itaque, optio corporis quae nulla aspernatur in alias at numquam
							rerum ea excepturi expedita tenetur assumenda voluptatibus
							eveniet incidunt dicta nostrum quod?</p>
						<a href="#" class="btn btn-default">Learn More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>
							<i class="fa fa-fw fa-gift"></i> Free &amp; Open Source
						</h4>
					</div>
					<div class="panel-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Itaque, optio corporis quae nulla aspernatur in alias at numquam
							rerum ea excepturi expedita tenetur assumenda voluptatibus
							eveniet incidunt dicta nostrum quod?</p>
						<a href="#" class="btn btn-default">Learn More</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>
							<i class="fa fa-fw fa-compass"></i> Easy to Use
						</h4>
					</div>
					<div class="panel-body">
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Itaque, optio corporis quae nulla aspernatur in alias at numquam
							rerum ea excepturi expedita tenetur assumenda voluptatibus
							eveniet incidunt dicta nostrum quod?</p>
						<a href="#" class="btn btn-default">Learn More</a>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<!-- Portfolio Section -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Portfolio Heading</h2>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
			<div class="col-md-4 col-sm-6">
				<a href="portfolio-item.html"> <img
					class="img-responsive img-portfolio img-hover"
					src="http://placehold.it/700x450" alt="">
				</a>
			</div>
		</div>
		<!-- /.row -->

		<!-- Features Section -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Modern Business Features</h2>
			</div>
			<div class="col-md-6">
				<p>The Modern Business template by Start Bootstrap includes:</p>
				<ul>
					<li><strong>Bootstrap v3.3.7</strong></li>
					<li>jQuery v1.11.1</li>
					<li>Font Awesome v4.2.0</li>
					<li>Working PHP contact form with validation</li>
					<li>Unstyled page elements for easy customization</li>
					<li>17 HTML pages</li>
				</ul>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Corporis, omnis doloremque non cum id reprehenderit, quisquam totam
					aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis
					quia dolorum ducimus unde.</p>
			</div>
			<div class="col-md-6">
				<img class="img-responsive" src="http://placehold.it/700x450" alt="">
			</div>
		</div>
		<!-- /.row -->

		<hr>

		<c:import url="footer-uniadv.jsp"></c:import>

	</div>
	<script src="${url_base}js/bootstrap.min.js"></script>
</body>
</html>