<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:url var="url_base" value="/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Login Uniadv</title>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="${url_base}css/common.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<form method="POST" action="/login" class="form-signin">
			<h2 class="form-heading">Log in</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span> <input name="username" type="text"
					class="form-control" placeholder="Username" autofocus="true" /> <input
					name="password" type="password" class="form-control"
					placeholder="Password" /> <span>${error}</span> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</div>
<%-- <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4> --%>
		</form>

	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
