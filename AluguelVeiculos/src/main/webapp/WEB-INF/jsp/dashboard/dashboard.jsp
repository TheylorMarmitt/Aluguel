<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>

<%@ include file="/WEB-INF/template/resources.jsp"%>
<link href="<c:url value="/resources/dashAssets/style.css" />" rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"> </script>
</head>
<body>

	<%@ include file="/WEB-INF/template/menu.jsp"%>

	<div class="row">
		<div class="col-xs-12 col-md-8 col-md-offset-2">
			<canvas class="col-xs-12 col-md-6" id="grafico1" width="90%"
				height="56%"></canvas>
		</div>
		
	</div>
	
	<br>
	<br>
	<script src="<c:url value="/resources/js/custom.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

	<script type="text/javascript">
	
		const carro = [];
		  
		function pegaDados(){  
	        <c:forEach var="c" items="${carros}">
	        	carro.push({modelo: "${c.modelo}", valor: ${c.valor}, qtdAlugado: ${c.qtdAlugado}});
	        </c:forEach>
	    }
	
		var ctx = document.getElementById('grafico1');
		var labels = [];
		var data = [];
		var backgroundColor = [];
		var borderColor = [];
		
		
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
			
		});
		
	</script>

</body>
</html>