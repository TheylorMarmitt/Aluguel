<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<%@ include file="/WEB-INF/template/resources.jsp"%>
 <link href="<c:url value="/resources/loginAssets/style.css" />" rel="stylesheet">

</head>
<body>
<div class="container-fluid conteudo">
<div class="marca text-center">
<h1>Aluga<span>Car</span></h1>
</div>
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
				<button class="btn btn-primary" type="submit"><i class="glyphicon glyphicon-log-in"></i>  Entrar</button>
			</div>
		</div>	
	</form>
	<div class="col-md-12">	
			<div class="col-md-3 col-md-offset-4">	
				<a type="buttom" class="btn btn-link" href="<c:url value="/recuperarsenha"/>">Esqueci minha senha</a>
			</div>
		</div>	
	
</div>	
</body>
</html>