<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/loginAssets/style.css" />" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" >
 <link href="https://fonts.googleapis.com/css?family=Delius" rel="stylesheet">
 <link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
</head>
<body>
<div class="container-fluid">
	<h2 class="text-center">Digite seu login e senha</h2>
	<c:if test="${login == true}">
		<div >
			<h4 class="text-center danger">Dados incorretos, por favor tente novamente</h4>
		</div>			  		
	</c:if>
	<form action="entrar" method="post">
		<fieldset>
			<div class="form-group  col-md-12">
			  <label class="col-md-4 control-label text-right" for="e-mail">Usuário</label>  
			  <div class="col-md-4">
			  	<input id="email" name="email" type="text" placeholder="e-mail" class="form-control input-md" required="required"/>
			  </div>
			</div>
			<div class="form-group col-md-12">
			  <label class="col-md-4 control-label text-right" for="senha">Senha</label>
			  <div class="col-md-4">
			    <input id="senha" name="senha" type="password" placeholder="senha" class="form-control input-md" required="required"/>
			  </div>
			</div>
	</fieldset>
		<div class="col-md-12">	
			<div class="col-md-3 col-md-offset-4">	
				<button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-log-in
"></i>  Entrar</button>
				<a href="dashboard/" class="btn btn-default active" role="button" aria-pressed="true"><i class="fa fa-user-plus"></i>  Cadastre-se!</a>
			</div>
		</div>	
	</form>
</div>	
</body>
</html>