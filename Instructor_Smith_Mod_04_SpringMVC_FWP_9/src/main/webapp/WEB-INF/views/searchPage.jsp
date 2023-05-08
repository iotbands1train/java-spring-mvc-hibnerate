<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
</head>
<body>
			 <jsp:include page="menu.jsp"></jsp:include>
		<div align="center" style="position: fixed; margin-left: 40%; margin-top: 5%;">

				<div id="bodydiv" align="center"
					style="position: fixed; z-index: 2; height: 510px; width: '100%'; overflow: auto;">
	
	<h1>Search for Person</h1>
	<h3>Search by ID  </h3> 
	<form action="search" method="post">
		<table  id="table" data-toggle="bootstrap-table"
					data-show-columns="true" data-multiple-select-row="true"
					data-click-to-select="true" data-pagination="true"
					data-search="true"
					data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
					data-side-pagination="server"
					class="table table-bordered table-hover">
			<tr>
				<td>ID</td>
				<td><input type="text" placeholder="Enter ID" name="id" value="${lastID}"/></td>
			</tr> 
			<tr>
				<td colspan="2">
				<input type="submit" value="Search for Person" />
				</td>
			</tr>
		</table>
	</form>
	<br>
				</div>

			</div>
</body>
</html>