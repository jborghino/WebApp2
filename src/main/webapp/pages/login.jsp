<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<link rel="stylesheet" href=<c:url value="/template/css/bootstrap.css"/>>
<link rel="stylesheet"
	href=<c:url value="/template/css/font-awesome.min.css"/>>
<link rel="stylesheet" href=<c:url value="/template/css/font.css"/>>
<link rel="stylesheet" href=<c:url value="/template/css/style.css"/>>
<link rel="stylesheet" href=<c:url value="/template/css/plugin.css"/>>
<link rel="stylesheet" href=<c:url value="/template/css/landing.css"/>>
<link rel="stylesheet" href=<c:url value="/template/css/mycss.css"/>>

<!-- datepicker -->
<script
	src=<c:url value="/template/js/datepicker/bootstrap-datepicker.js"/>></script>
<!-- / footer -->
<script src=<c:url value="/template/js/jquery.min.js"/>></script>
<!-- Bootstrap -->
<script src=<c:url value="/template/js/bootstrap.js"/>></script>
<!-- app -->
<script src=<c:url value="/template/js/app.js"/>></script>
<script src=<c:url value="/template/js/app.plugin.js"/>></script>
<script src=<c:url value="/template/js/app.data.js"/>></script>
<!-- fuelux -->
<script src=<c:url value="/template/js/fuelux/fuelux.js"/>></script>
<!-- slider -->
<script src=<c:url value="/template/js/slider/bootstrap-slider.js"/>></script>
<!-- file input -->
<script
	src=<c:url value="/template/js/file-input/bootstrap.file-input.js"/>></script>
<!-- combodate -->
<script src=<c:url value="/template/js/combodate/moment.min.js"/>></script>
<script src=<c:url value="/template/js/combodate/combodate.js"/>></script>
<!-- parsley -->
<script src=<c:url value="/template/js/parsley/parsley.min.js"/>></script>
<!-- select2 -->
<script src=<c:url value="/template/js/select2/select2.min.js"/>></script>

<!--[if lt IE 9]>
    <script src="/template/js/ie/respond.min.js" cache="false"></script>
    <script src="/template/js/ie/html5.js" cache="false"></script>
    <script src="/template/js/ie/excanvas.js" cache="false"></script>
  <![endif]-->
</head>


<body>
<br />
	<div class="container">
		<div class="row">
			<form id="myform" action="../j_spring_security_check" method="POST">
				<div class="row">
					<div class="col-lg-5">
						<div class="form-group">
							<label class="control-label label label-default" for="login">Login
								:</label> <input class="form-control" name="j_username" id="login"
								type="text" placeholder="Veuillez saisir ici votre login...">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-5">
						<div class="form-group">
							<label class="control-label label label-default" for="password">Password
								:</label> <input type="password" class="form-control" name="j_password" id="password"
								type="text" placeholder="Veuillez saisir ici votre password...">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-5">
						<button id="soumettre" class="btn btn-lg btn-primary">
							Envoyer&nbsp;<i class="fa fa-arrow-circle-right"></i>
						</button>
					</div>
				</div>
			</form>
		</div>



	</div>

</body>

</html>