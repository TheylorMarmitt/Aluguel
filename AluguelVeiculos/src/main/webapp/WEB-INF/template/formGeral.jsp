	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
	<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.nome"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="nome" name="nome"
							placeholder="Joe" class="form-control" required="required"
							value= "" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.sobrenome"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="sobrenome"
							name="sobrenome" placeholder="Doe" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.dataNascimento"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-calendar"></i></span><input id="dataNascimento" name="dataNascimento"
							placeholder="Data" class="form-control"
							required="required" value="" type="date">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.telefone"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-earphone"></i></span><input id="telefone" name="telefone"
							placeholder="49 9 9999-9999" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.cpf"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span><input id="cpf" name="cpf"
							placeholder="112.234.567-89" class="form-control"
							required="required" value="" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 control-label"><fmt:message key="campo.email"/></label>
				<div class="col-md-9 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope"></i></span><input id="email" name="email"
							placeholder="joe@doe.com" class="form-control"
							required="required" value="" type="email">
					</div>
				</div>
			</div>

<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.mask.js" />"></script>	
			
			<script>
			jQuery(function($){
			$("#cpf").mask("999.999.999-99");
			$("#telefone").mask("(99)99999-9999");
			});
			</script>