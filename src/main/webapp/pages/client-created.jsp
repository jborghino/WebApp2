<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>

<head>

</head>

<body>

	Client id : ${client.id }
	${client.nom }
	<fmt:formatDate value="${client.dateInscription }" pattern="dd/MM/yyyy" />
	${client.age }
	${client.email }
</body>

</html>