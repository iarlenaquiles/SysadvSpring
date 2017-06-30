<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Uniadv</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="/">Início</a></li>
				<li><a href="/clientes">Clientes</a></li>
				<li><a href="/processos">Processos</a></li>
				<li><a href="/usuarios">Usuários</a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="username">${pageContext.request.userPrincipal.name}</span>
						<b class="caret"></b>
				</a>
					<ul class="dropdown-menu extended logout">
						<li><c:if
								test="${pageContext.request.userPrincipal.name != null}">
								<form id="logoutForm" method="POST"
									action="${contextPath}/logout">
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" /> <a class="btn btn-info"
										role="button" onclick="document.forms['logoutForm'].submit()">Sair</a>
								</form>
							</c:if></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
