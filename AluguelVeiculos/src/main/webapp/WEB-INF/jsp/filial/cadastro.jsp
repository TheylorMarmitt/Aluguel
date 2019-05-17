<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AC Cadastro filial</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<div class="navbar-wrapper">
		<div class="container-fluid">
			<nav class="navbar navbar-fixed-top">
				<div class="container">
					<a class="navbar-brand" href="#"><img
						src=""></a>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="#" class="">Cadastro</a></li>
							<li><a href="#" class="">Listagem</a></li>
							<li><a href="#" class="">Outros</a></li>
						</ul>
						<ul class="nav navbar-nav pull-right">
							<li class="active"><a href="#">Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/filial/enviar"></c:url>' method="post">
		<fieldset>
			<div class="form-group">
				<label class="col-md-3 control-label">Nome da Filial</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="nome" name="nome"
							placeholder="Filial 01" class="form-control" required="required"
							value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Cidade</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="cidade"
							name="cidade" placeholder="Xanxerê" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Estado</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-home"></i></span><input id="uf" name="uf"
							placeholder="Address Line 2" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>
			<input type="submit" class="btn btn-primary col-md-1 col-md-offset-10"
				name="Enviar" />
		</fieldset>
	</form>
</body>
</html>