<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
</head>


<body>
	<div class="container">
		<div class="row">
			<table
				class="table-condensed table-hover table-striped table-bordered"
				id="myTable">
				<tr>
					<th style="width: 10%">Nom</th>
					<th style="width: 20%">Email</th>
					<th style="width: 10%">Age</th>
					<th style="width: 30%">Date inscription</th>
					<th style="width: 30%">Action</th>
				</tr>
				<c:forEach var="client" items="${clients }">

					<tr>
						<td>${client.nom }</td>
						<td>${client.email }</td>
						<td>${client.age }</td>
						<td><fmt:formatDate value="${client.dateInscription }" pattern="dd/MM/yyyy" /></td>
						<td colspan="2">
							<a href="delete.do?id=${client.id }"><i class="fa fa-minus-square fa-spin"></i>Delete</a>
							<a href="init.do?id=${client.id }"><i class="fa fa-rotate-right fa-spin"></i>Update</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>



</body>


</html>