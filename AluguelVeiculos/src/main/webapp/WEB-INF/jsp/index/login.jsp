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
<div class="container-fluid">
	<h2 class="text-center">Digite seu login e senha</h2>
	<form method="post">
		<fieldset>
			<div class="form-group  col-md-12">
			  <label class="cooool-md-4 control-label text-right" for="e-mail">Usuário</label>  
			  <div class="col-md-4">
			  	<input id="e-mail" name="e-mail" type="text" placeholder="e-mail" class="form-control input-md" required="required"/>
			  </div>
			</div>
			<div class="form-group col-md-12">
			  <label class="col-md-4 control-label text-right" for="senha">Senha</label>
			  <div class="col-md-4">
			    <input id="senha" name="senha" type="password" placeholder="senha" class="form-control input-md" required="required"/>
			  </div>
			</div>
	</fieldset>
			<div class="col-md-12 col-md-offset-4">	
				<button class="btn btn-primary text-center" type="submit">Entrar</button>
			</div>
	</form>
</div>	
</body>
</html>