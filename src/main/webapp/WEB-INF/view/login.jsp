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

<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${url_base}css/common.css" rel="stylesheet">

</head>

<body>

	<div class="container">

		<form method="POST" action="/login" class="form-signin">
			<h2 class="form-heading">Login</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<c:if test="${not empty message}">
					<div class="alert alert-success alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<p>${message}</p>
					</div>
				</c:if>
				<input name="username" type="text" class="form-control"
					placeholder="Username" autofocus="true" /> <input name="password"
					type="password" class="form-control" placeholder="Password" />

				<c:if test="${not empty error}">
					<div class="alert alert-danger alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<p>${error}</p>
					</div>
				</c:if>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</div>
		</form>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
