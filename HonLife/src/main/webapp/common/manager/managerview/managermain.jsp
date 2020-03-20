<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>managermain</title>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		
		google.charts.setOnLoadCallback(drawVisualization1);
		google.charts.setOnLoadCallback(drawVisualization2);
		google.charts.setOnLoadCallback(drawVisualization3);
		google.charts.setOnLoadCallback(drawVisualization4);
		
		
		function drawVisualization1() { 				
			var data1 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options1 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황1',
					is3D: true
				};		
			var chart1 = new google.visualization.PieChart(document.getElementById('chart_div1'));
			chart1.draw(data1, options1);
		}	
		
		
		
		function drawVisualization2() { 				
			var data2 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options2 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황2',
					is3D: true
				};		
			var chart2 = new google.visualization.PieChart(document.getElementById('chart_div2'));
			chart2.draw(data2, options2);
		}	
		
		
		
		function drawVisualization3() { 				
			var data3 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options3 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황3',
					is3D: true
				};		
			var chart3 = new google.visualization.PieChart(document.getElementById('chart_div3'));
			chart3.draw(data3, options3);
		}	
		
		
		
		
		function drawVisualization4() { 				
			var data4 = google.visualization.arrayToDataTable([
					['방내역', '방'],
					['공실',  165],
					['예약 된 방',  135]
				]);
			var options4 = {
					width: 400,
					height: 240,
					title : '객실 예약 현황4',
					is3D: true
				};		
			var chart4 = new google.visualization.PieChart(document.getElementById('chart_div4'));
			chart4.draw(data4, options4);
		}	
		
	</script>
 
 
</head>
<jsp:include page="../../../common/manager/managerheader.jsp"/>
<body >
<main  >



		<div class="col-left contact-info">

			<jsp:include page="../../../common/manager/sidemenu.jsp" />
		
			
		</div>

		<div class="col-right">
		
		<table class="columns" style="position: relative;right: 215px;top: -5px;">
      <tr>
        <td>
        <div id="chart_div1" style="width:350px; height: 230px;"></div>
        </td>   
        <td>
        <div id="chart_div2" style="width:350px; height: 230px;"></div>     
        </td>
        <td>
            <div id="chart_div3" style="width:350px; height: 230px;"></div>
        </td>
        
        </tr>
        <tr>   
        <td>
        <div id="chart_div4" style="width:350px; height: 123px;"></div>
        </td>
      </tr>
    </table>
		</div>



</main>











</body>
</html>