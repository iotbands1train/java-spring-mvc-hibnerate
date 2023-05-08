
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="size" value="${listPersons.size()}"></c:set>
<html>
<head>
<style>
.table, tr, th, td, h1, h3 {
	background-color: white;
}

body {
	background-image:
		url("${pageContext.request.contextPath}/resources/images/black.jpg");
	/* The image used */
	background-color: #cccccc; /* Used if the image is unavailable */
	height: 500px; /* You must set a specified height */
	background-position: center; /* Center the image */
	background-repeat: no-repeat; /* Do not repeat the image */
	background-size: cover;
	/* Resize the background image to cover the entire container */
}
</style>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>

			<div align="center" style="position: fixed; margin-left: 25%; margin-top: 5%;">

				<div id="bodydiv" align="center"
					style="position: fixed; z-index: 2; height: 510px; width: '100%'; overflow: auto;">


	<h1 align="center">Persons List</h1>
					<c:if test="${!empty listPersons}">
	<h3>Person List => ${listPersons.size()}  |   ${type} SpeedTime : ${time} secs </h3> 
						<table id="table" data-toggle="bootstrap-table"
							data-show-columns="true" data-multiple-select-row="true"
							data-click-to-select="true" data-pagination="true"
							data-search="true"
							data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
							data-side-pagination="server"
							class="table table-bordered table-hover">
							<tr>
								<th class="bs-checkbox " style="width: 36px;" data-field="state"><div
										class="th-inner ">
										<label><input name="select-all" type="checkbox"><span></span></label>
									</div>
									<div class="fht-cell"></div></th> 
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/read">Row#</a>
										</div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byID">ID</a>
										</div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byFname">Fname</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byLname">Lname</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byStreet">Street</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byCity">City</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byState">State</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byZip">Zip</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">
										 <a class="nav-link" href="${pageContext.request.contextPath}/byPhone">Phone</a></div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">Edit</div>
									<div class="fht-cell"></div></th>
								<th width="60" data-field="name"><div
										class="th-inner sortable both">Delete</div>
									<div class="fht-cell"></div></th>
							</tr>
							<c:forEach items="${listPersons}" var="u">

								<tr data-index="${len}" class="">

									<td class="bs-checkbox " style="width: 36px;"><label>
											<input data-index="${len}" name="btSelectItem"
											type="checkbox" value="true"> <span></span>
									</label></td>
									<td>${len=len+1}</td>
									<td>${u.getId()}</td>
									<td>${u.getFname()}</td>
									<td>${u.getLname()}</td>
									<td>${u.getStreet()}</td>
									<td>${u.getCity()}</td>
									<td>${u.getState()}</td>
									<td>${u.getZip()}</td>
									<td>${u.getPhone().replace('[',' ').replace(']',' ').trim()}</td>
									<td> 
									<form action="update/${u.getId()}" method="get">
									<input type="submit" value="Edit"/>
									</form> </td>
									<td> 
									
									<form action="delete" method="post"><input type="hidden" name="id" value="${u.getId()}"/>
									<input type="submit" value="Delete"/>
									</form> </td>
								</tr>
							</c:forEach>
						</table>
						<a href="<c:url value='create' />">Add New User</a>
					</c:if>

				</div>

			</div> 

</body>
</html>