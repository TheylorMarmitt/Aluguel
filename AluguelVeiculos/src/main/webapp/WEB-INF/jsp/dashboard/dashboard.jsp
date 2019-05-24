
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/dashAssets/style.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/menu/style.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Delius"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"> </script>	
</head>
<body>

	<%@ include file="/WEB-INF/template/menu.jsp"%>

	<div class="row">
		<div class="col-xs-12 col-md-6">
			<canvas class="col-xs-12 col-md-6" id="grafico1" width="90%" height="40%"></canvas>
		</div>
		<div class="col-xs-12 col-md-6">
			<canvas class="col-xs-12 col-md-6" id="grafico2" width="90%" height="40%"></canvas>
		</div>
	</div>
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>

	<script>
		var ctx = document.getElementById('grafico1');
		var labels = [];
		
		var data = [];

		var backgroundColor = [];
		var borderColor = [];
		
		var label = 'Veículos mais caros';
		var borderWidth = 2;
		
		<c:forEach var="c" items="${carros}">
			labels.push(${c.modelo});
			data.push(${c.valor});
			backgroundColor.push('#207dd4');
			borderColor.push('#ddd')
		</c:forEach>

		
		var myChart = new Chart(ctx, {
			type : 'bar',			
			data : { labels,
				datasets : [ {
					label,
					data,
					backgroundColor,
					borderColor,
					borderWidth,
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
		
		var ctx = document.getElementById('grafico2');
		var myChart = new Chart(ctx, {
			type : 'pie',
			data : {
				labels : [ 'Carro1', 'Carro2', 'Carro3', 'Carro4' ],
				datasets : [ {
					label : '# teste',
					data : [ 12, 19, 3, 5, 2, 3 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 159, 64, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255, 159, 64, 1)' ],
					borderWidth : 4
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
	</script>


</body>
</html>