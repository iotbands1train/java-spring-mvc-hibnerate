<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<head>
<title>Login</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

</head>
<body style="background-color:#161E2D;color: white;background: url(https://hrw2mk5q2m.us-east-1.awsapprunner.com/static/background.svg) #161E2D no-repeat;">
	<nav class="navbar navbar-expand-lg navbar-light"
		style="background-color: #e3f2fd;">
		<a class="navbar-brand">WHS</a>
	</nav>




	<h1 align="center">Login</h1>
	<h3 align="center">Person List => ${listPersons.size()}</h3>
	<div id="bodydiv" align="center"
		style="position: relative; z-index: 15; height: 75%; overflow: auto; display: flex; align-items: center; justify-content: center;">



		<c:url var="loginAction" value="/login"></c:url>
		<form action="${loginAction}" method="post">
			<table id="table" data-toggle="bootstrap-table"
				data-show-columns="true" data-multiple-select-row="true"
				data-click-to-select="true" data-pagination="true"
				data-search="true"
				data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
				data-side-pagination="server"
				class="table table-bordered table-hover">
				<tr>
					<th></th>
					<th width="60" data-field="name"><div
							class="th-inner sortable both">
							<h3>Login</h3>
							<h4>User and Pass</h4>
						</div>
						<div class="fht-cell"></div></th>

				</tr>
				<tr>
					<td><label>Username </label></td>
					<td><input type="text" name="user" value="${lastUser}" /></td>
				</tr>
				<tr>
					<td><label>Password </label></td>
					<td><input type="text" name="pass" value="${lastPass}" /></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>