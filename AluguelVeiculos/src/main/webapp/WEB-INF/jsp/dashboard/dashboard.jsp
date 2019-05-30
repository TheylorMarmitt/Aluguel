
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/dashAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"> </script>
</head>
<body>

	<%@ include file="/WEB-INF/template/menu.jsp"%>

	<div class="row">
		<div class="col-xs-12 col-md-6">
			<canvas class="col-xs-12 col-md-6" id="grafico1" width="90%"
				height="40%"></canvas>
		</div>
		<div class="col-xs-12 col-md-6">
			<canvas class="col-xs-12 col-md-6" id="grafico2" width="90%"
				height="40%"></canvas>
		</div>
	</div>
	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

	<script type="text/javascript">
	
		const carro = [];
		  
		function pegaDados(){  
	        <c:forEach var="c" items="${carros}">
	        	carro.push({modelo: "${c.modelo}", valor: ${c.valor}, qtdAlugado: ${c.qtdAlugado}});
	        </c:forEach>
	        console.log(carro);
	    }
	
		var ctx = document.getElementById('grafico1');
		var labels = [];
		var data = [];
		var backgroundColor = [];
		var borderColor = [];
		
		var ctx2 = document.getElementById('grafico2');
		var labels2 = [];
		var data2 = [];
		var backgroundColor2 = [];
		var borderColor2 = [];
		
		$(document).ready(function() {
			pegaDados();
			
			// grafico1
			carro.forEach(element => {
		        labels.push(element.modelo);
		        data.push(element.valor);
		        backgroundColor.push('#207dd4');
		        borderColor.push('#eee');
			 }); 

			var myChart = new Chart(ctx, {
				type : 'bar',			
				data : { labels,
					datasets : [ {
						label: 'Veículos e valores',
						data,
						backgroundColor,
						borderColor,
						borderWidth: 2
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
			
			// grafico2
			carro.forEach(element => {
		        labels2.push(element.modelo);
		        data2.push(element.qtdAlugado);
		        backgroundColor2.push('#207dd4');
		        borderColor2.push('#eee');
		    }); 
			
			var myChart = new Chart(ctx2, {
				type : 'pie',			
				data : { labels,
					datasets : [ {
						label: 'Quantidade de alugueis',
						data2,
						backgroundColor2,
						borderColor2,
						borderWidth: 2
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
			
		});
		
	</script>

</body>
</html>