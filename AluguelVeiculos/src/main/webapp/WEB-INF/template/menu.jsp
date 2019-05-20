<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="../dashboard/">Aluga<span>Car</span></a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="../carro/cadastro"><fmt:message key="carro"/></a></li>
          <li><a href="../cliente/cadastro"><fmt:message key="cliente"/></a></li>
          <li><a href="../funcionario/cadastro"><fmt:message key="funcionario"/></a></li>
          <li><a href="#aluguel"><fmt:message key="aluguel"/></a></li>
          <li><a href="#devolucao"><fmt:message key="devolucao"/></a></li>
          <li></li>
          <li></li>
          <li class="btn-trial"><a href="#footer"><fmt:message key="sair"/></a></li>
        </ul>
      </div>
    </div>
  </nav>