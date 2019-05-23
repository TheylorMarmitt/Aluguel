<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../dashboard/">Aluga<span>Car</span></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
			
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><fmt:message key="carro" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../carro/cadastro"><fmt:message key="cadastrar" /></a></li>
						<li><a href="../carro/atualizar"><fmt:message key="atualizar" /></a></li>
						<li><a href="../carro/disponiveis"><fmt:message key="disponiveis" /></a></li>
					</ul>
				</li>
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><fmt:message key="cliente" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../cliente/cadastro"><fmt:message key="cadastrar" /></a></li>
						<li><a href="../cliente/atualizar"><fmt:message key="atualizar" /></a></li>
					</ul>
				</li>
					
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><fmt:message key="funcionario" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../funcionario/cadastro"><fmt:message key="cadastrar" /></a></li>
						<li><a href="../funcionario/atualizar"><fmt:message key="atualizar" /></a></li>
					</ul>
				</li>	
				
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><fmt:message key="aluguel" /><span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../aluguel/cadastro"><fmt:message key="cadastrar" /></a></li>
						<li><a href="../aluguel/ativos"><fmt:message key="ativos" /></a></li>
					</ul>
				</li>	
					
				<li><a href="../devolucao/devolucao"><fmt:message
							key="devolucao" /></a></li>
				<li></li>
				<li></li>
				<li class="btn-trial sair"><a href="#footer"><fmt:message
							key="sair" /></a></li>
			</ul>
		</div>
	</div>
</nav>

<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
