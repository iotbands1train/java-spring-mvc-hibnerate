
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="size" value="${listPersons.size()}"></c:set>
<div>
	<jsp:include page="menu.jsp"></jsp:include>

	<div  >
		<div   style="
    width: 500px; margin-left: 25%;margin-top: 5%;'">
	<h3>Search Results   </h3>
<h4>  ${type} SpeedTime : ${time} secs </h4>

			<c:if test="${!empty person}">
				<table align="left" id="table" data-toggle="bootstrap-table"
					data-show-columns="true" data-multiple-select-row="true"
					data-click-to-select="true" data-pagination="true"
					data-search="true"
					data-url="https://examples.wenzhixin.net.cn/examples/bootstrap_table/data"
					data-side-pagination="server"
					class="table table-bordered table-hover">
					<tr>
						<th >Row#</th>
						<th  >Person ID</th>
						<th  >Person Fname</th>
						<th  >Person Lname</th>
						<th  >Person Street</th>
						<th  >Person City</th>
						<th >Person State</th>
						<th  >Person Zip</th>
						<th >Person Phone</th>
						<th  >Edit</th>
						<th  >Delete</th>
					</tr>
					<c:set value="${person}" var="u">
					</c:set>
					<tr>
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
				</table>
				<a href="<c:url value='create' />">Add New User</a>
			</c:if>
			<c:if test="${empty person}">

				<table  >
					<tr>
						<th width="80">Row#</th>
						<th width="80">Person ID</th>
						<th width="120">Person Fname</th>
						<th width="120">Person Lname</th>
						<th width="120">Person Street</th>
						<th width="80">Person City</th>
						<th width="60">Person State</th>
						<th width="60">Person Zip</th>
						<th width="80">Person Phone</th>
						<th width="60">Edit</th>
						<th width="60">Delete</th>
					</tr>
					<tr>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
						<td>N/A</td>
					</tr>
				</table>
				<a href="<c:url value='create' />">Add New User</a>
			</c:if>
		</div>
	</div>
</div>
