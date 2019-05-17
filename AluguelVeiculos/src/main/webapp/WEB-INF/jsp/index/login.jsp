<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<h2>Faça seu login</h2>
<form method="post">
	<fieldset>
		<div class="form-group">
		  <label class="col-md-4 control-label" for="e-mail">Usuário</label>  
		  <div class="col-md-4">
		  <input id="e-mail" name="e-mail" type="text" placeholder="e-mail" class="form-control input-md" required="required"/>
		  <span class="help-block">help</span>  
		  </div>
		</div>
		<div class="form-group">
		  <label class="col-md-4 control-label" for="senha">Senha</label>
		  <div class="col-md-4">
		    <input id="senha" name="senha" type="password" placeholder="senha" class="form-control input-md" required="required"/>
		    <span class="help-block">help</span>
		  </div>
		</div>
</fieldset>
</form>
	
</body>
</html>