<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AC Cliente</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/clienteAssets/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
</head>
<body>
	<div class="navbar-wrapper">
		<div class="container-fluid">
			<nav class="navbar navbar-fixed-top ">
				<div class="container">
					<a class="navbar-brand" href="#"><img src=""></a>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav ">
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
	<div class= "container-fluid busca">
		<h1>Atualizar Cliente</h1>
		<form action='<c:url value="/cliente/atualizar"></c:url>' method="get">
			<div class="form-group">
				<label class="pull-left control-label  cpf"> Buscar por cpf</label>
				<div class="inputGroupContainer">
					<div class="input-group">
						<input type="text" name="filtroCPF"> <input
							class="btn btn-default" type="submit" value="filtrar" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<form class="well form-horizontal"
		action='<c:url value="/cliente/enviar"></c:url>' method="post">
		<fieldset>
			<div class="form-group">
				<label class="col-md-3 control-label">Nome</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="nome" name="nome"
							placeholder="Joe" class="form-control" required="required"
							value="<c:out value="${cliente.nome}"/>" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Sobrenome</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="sobrenome"
							name="sobrenome" placeholder="Doe" class="form-control"
							required="required" value="<c:out value="${cliente.sobrenome}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Data de Nascimento</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input
							id="dataNascimento" name="dataNasc" placeholder="Data"
							class="form-control" required="required"
							value="<c:out value="${cliente.dataNascimento}"/>" type="date">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Telefone</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="telefone"
							name="telelefone" placeholder="49 9 9999-9999"
							class="form-control" required="required"
							value="<c:out value="${cliente.telefone}"/>" type="tel">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">CPF</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cpf" name="cpf"
							placeholder="112.234.567-89" class="form-control"
							required="required" value="<c:out value="${cliente.cpf}"/>"
							type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">Email</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="email"
							name="email" placeholder="joe@doe.com" class="form-control"
							required="required" value="<c:out value="${cliente.email}"/>"
							type="email">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label">CNH</label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cnh" name="cnh"
							placeholder="62786985474" class="form-control"
							required="required" value="<c:out value="${cliente.cnh}"/>"
							type="text">
					</div>
				</div>
			</div>
			<input type="submit"
				class="btn btn-primary col-md-1 col-md-offset-11" name="Enviar" />
		</fieldset>
	</form>
</body>
</html>