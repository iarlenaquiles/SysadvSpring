<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Uniadv</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/">In�cio</a></li>
			<li><a href="/clientes">Clientes</a></li>
			<li><a href="/processos">Processos</a></li>
			<li><a href="/usuarios">Usu�rios</a></li>
			<li><a href="#"></a></li>
		</ul>

		<div class="top-nav ">
			<ul class="nav pull-right top-menu">
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
