<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Uniadv</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/">Início</a></li>
			<li><a href="/clientes">Clientes</a></li>
			<li><a href="/processos">Processos</a></li>
			<li><a href="#"> <c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<form id="logoutForm" method="POST" action="${contextPath}/logout">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>

        Welcome ${pageContext.request.userPrincipal.name} | <a
							onclick="document.forms['logoutForm'].submit()">Logout</a>

					</c:if></a></li>
		</ul>
	</div>
</nav>