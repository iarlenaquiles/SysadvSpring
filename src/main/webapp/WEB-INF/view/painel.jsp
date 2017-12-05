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
<script src="https://use.fontawesome.com/d91313ced9.js"></script>
<script src="${url_base}js/jquery.min.js"></script>
</head>
<body>
	<c:import url="header.jsp"></c:import>
	<div class="container">
		<div class="row state-overview">
			<a href="/processos">
				<div class="col-lg-3 col-sm-6">
					<section class="panel">
					<div class="symbol red">
						<i class="fa fa-legal"></i>
					</div>
					<div class="value">
						<h1 id="qtd_processo"></h1>

						<p>Processos</p>
					</div>
					</section>
				</div>
			</a> <a href="/clientes">
				<div class="col-lg-3 col-sm-6">
					<section class="panel">
					<div class="symbol green">
						<i class="fa fa-user"></i>
					</div>
					<div class="value">
						<h1 id="qtd_cliente"></h1>
						<p>Clientes</p>
					</div>
					</section>
				</div>
			</a> <a href="/usuarios">
				<div class="col-lg-3 col-sm-6">
					<section class="panel">
					<div class="symbol blue">
						<i class="fa fa-users"></i>
					</div>
					<div class="value">
						<h1 id="qtd_usuario"></h1>
						<p>Usuários</p>
					</div>
					</section>
				</div>
			</a> <a href="/contatos">
				<div class="col-lg-3 col-sm-6">
					<section class="panel">
					<div class="symbol yellow">
						<i class="fa fa-address-book"></i>
					</div>
					<div class="value">
						<h1 id="qtd_contato"></h1>
						<p>Contatos</p>
					</div>
					</section>
				</div>
			</a>

		</div>

<h3>Tabela desenvolvimento</h3>
		<div class="row">
			<div class="col-lg-12">
				<!--work progress start-->
				<section class="panel"> <header
					class="panel-heading tab-bg-dark-navy-blue">
				<ul class="nav nav-tabs nav-justified ">
					<li class="active"><a href="#audiencias" data-toggle="tab">
							Audiências </a></li>
					<li><a href="#pericia" data-toggle="tab"> Perícias </a></li>
					<li><a href="#compromisso" data-toggle="tab"> Compromissos
					</a></li>
					<li><a href="#emenda_laudo" data-toggle="tab">
							Emendas/Respostas </a></li>
					<li><a href="#recurso_contestacao" data-toggle="tab">
							Recursos/Contestações </a></li>
					<li><a href="#reservado" data-toggle="tab"> Reservado </a></li>

					<li><a data-toggle="tab" href="#calendario"> <i
							class="fa fa-calendar"></i> Calendário
					</a></li>
				</ul>
				</header>
				<div class="panel-body progress-panel">

					<div class="tab-content">
						<div class="tab-pane active" id="audiencias">
							<div class="task-progress">
								<h1>Audiências</h1>
							</div>

							<div class="form-group">
								<input name="consulta" id="txt_consulta"
									placeholder="Consultar Audiências" type="text"
									class="form-control" style="margin-right: 10px;">
							</div>

							<table class="table table-hover personal-task"
								id="table_audiencia">
								<thead>
									<th>Tipo de Justiça</th>
									<th>Data da Audiência</th>
									<th>Nome da ação</th>
									<th>Local</th>
									<th>Cliente</th>
									<th>Avisado</th>
									<th>Ações</th>
								</thead>

							</table>
						</div>
						<div class="tab-pane" id="pericia">
							<div class="task-progress">
								<h1>Perícias</h1>
							</div>

							<table class="table table-hover personal-task">
								<thead>
									<th>Tipo de Justiça</th>
									<th>Data da Perícia</th>
									<th>Nome da ação</th>
									<th>Local</th>
									<th>Cliente</th>
									<th>Avisado</th>
									<th>Ações</th>
								</thead>
								
							</table>
						</div>
						<div class="tab-pane" id="compromisso">

							<div class="task-progress">
								<h1>Compromissos</h1>
							</div>
							<table class="table table-hover personal-task">
								<thead>
									<th>Tipo de Justiça</th>
									<th>Data do Compromisso</th>
									<th>Nome da ação</th>
									<th>Local</th>
									<th>Cliente</th>
									<th>Avisado</th>
									<th>Ações</th>
								</thead>
							</table>
						</div>
						<div class="tab-pane" id="emenda_laudo">

							<div class="task-progress">
								<h1>Emendas/Respostas</h1>
							</div>
							
							<table class="table table-hover personal-task">
								<thead>
									<th>Tipo de Prazo</th>
									<th>Tipo de Justiça</th>
									<th>Data final do Prazo</th>
									<th>Nome da ação</th>
									<th>Cliente</th>
									<th>Ações</th>
								</thead>
								
							</table>
						</div>
						<div class="tab-pane" id="recurso_contestacao">

							<div class="task-progress">
								<h1>Recursos/Contestações</h1>
							</div>
							
							<table class="table table-hover personal-task">
								<thead>
									<th>Tipo de Prazo</th>
									<th>Tipo de Justiça</th>
									<th>Data final do Prazo</th>
									<th>Nome da ação</th>
									<th>Cliente</th>
									<th>Ações</th>
								</thead>
								
							</table>
						</div>

						<div class="tab-pane" id="reservado">

							<div class="task-progress">
								<h1>Reservado</h1>
							</div>

							<table class="table table-hover personal-task">
								<thead>
									<th>Data Reserva</th>
									<th>Código/Ano</th>
									<th>Tipo Processo</th>
									<th>Nome da Ação</th>
									<th>Cliente</th>
									<th>Stiuação</th>
									<th>Ações</th>
								</thead>
								
							</table>
						</div>
						<!-- inicio do calendario -->
						<div class="tab-pane" id="calendario">
							<section class="panel">
							<div class="panel-body">
								<div id="calendar" class="has-toolbar"></div>
							</div>
							</section>
						</div>
						<!-- fim do calendario -->
					</div>
				</div>

				</section>
				<!--work progress end-->
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
	<script src="${url_base}js/bootstrap.min.js"></script>
	<script src="${url_base}js/app.js"></script>
</body>
</html>