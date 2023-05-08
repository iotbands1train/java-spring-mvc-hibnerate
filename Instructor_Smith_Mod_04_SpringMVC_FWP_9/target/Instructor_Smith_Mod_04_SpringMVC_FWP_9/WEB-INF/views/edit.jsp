<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head> 
</head>
<body> 
 <jsp:include page="menu.jsp"></jsp:include>
	<h1 align="center">Edit a Person</h1>
	<h3 align="center">Person List => ${listPersons.size()}</h3>
	

	<div id="bodydiv" align="center"
		style="  overflow: auto;  
    display: flex; 
    align-items: center;
    justify-content: center;">

	
	<c:url var="addAction" value="/update"></c:url>
	<form:form action="${addAction}" commandName="person">
	<table  id="table" data-toggle="bootstrap-table"
				data-show-columns="true" data-multiple-select-row="true"
				data-click-to-select="true" data-pagination="true"
				data-search="true"
				data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
				data-side-pagination="server"
				class="table table-bordered table-hover">
				<tr><th></th>
					<th width="60" data-field="name"><div
							class="th-inner sortable both">
							<h3>Edit</h3>
						</div>
						<div class="fht-cell"></div></th>

				</tr> 
			<c:if test="${!empty person.fname}">
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<td><form:input path="id" readonly="true" size="8"
							  /> <form:hidden path="id" /></td>
				</tr>
			</c:if>
			<tr>
				<td><form:label path="fname">
						<spring:message text="FName" />
					</form:label></td>
				<td><form:input path="fname" /></td>
			</tr>
			<tr>
				<td><form:label path="lname">
						<spring:message text="LName" />
					</form:label></td>
				<td><form:input path="lname" /></td>
			</tr>
			<tr>
				<td><form:label path="street">
						<spring:message text="Street" />
					</form:label></td>
				<td><form:input path="street" /></td>
			</tr>
			<tr>
				<td><form:label path="city">
						<spring:message text="City" />
					</form:label></td>
				<td><form:input path="city" /></td>
			</tr>
			<tr>
				<td><form:label path="state">
						<spring:message text="State" />
					</form:label></td>
				<td><form:input path="state" /></td>
			</tr>
			<tr>
				<td><form:label path="zip">
						<spring:message text="Zip" />
					</form:label></td>
				<td><form:input path="zip" /></td>
			</tr>
			<tr>
				<td><form:label path="phone">
						<spring:message text="Phone" />
					</form:label></td>
				<td><form:input path="phone" /></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty person.fname}">
						<input type="submit" value="<spring:message text="Edit Person"/>" />
					</c:if> <c:if test="${empty person.fname}">
						<input type="submit" value="<spring:message text="Add Person"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	<br>
	</div>
</body>
</html>