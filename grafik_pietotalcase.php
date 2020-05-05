<?php
include('koneksi2.php');
$country = mysqli_query($koneksi,"select * from tb_country");
while($row = mysqli_fetch_array($country)){
	$nama_country[] = $row['country'];
	
	$query = mysqli_query($koneksi,"select sum(total) as total from tb_tcase where id_country='".$row['id_country']."'");
	$row = $query->fetch_array();
	$total_case[] = $row['total'];
}
?>
<!doctype html>
<html>
 
<head>
	<title>Bar Pie Total Case</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
 
<body>
	<div id="canvas-holder" style="width:50%">
		<canvas id="chart-area"></canvas>
	</div>
	<script>
		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data:<?php echo json_encode($total_case); ?>,
					backgroundColor: [
					'rgb(255, 0, 0)',
					'rgb(255, 255, 0)',
					'rgb(34, 139, 35)',
					'rgb(75, 0, 130)',
					'rgb(62, 254, 255)',
					'rgb(127, 255, 1)',
					'rgb(238, 130, 238)',
					'rgb(210, 180, 140)',
					'rgb(112, 128, 145)',
					'rgb(25, 25, 112)'
					],
					borderColor: [
					'rgb(255, 0, 0)',
					'rgb(255, 255, 0)',
					'rgb(34, 139, 35)',
					'rgb(75, 0, 130)',
					'rgb(62, 254, 255)',
					'rgb(127, 255, 1)',
					'rgb(238, 130, 238)',
					'rgb(210, 180, 140)',
					'rgb(112, 128, 145)',
					'rgb(25, 25, 112)'
					],
					label: 'Total Case'
				}],
				labels: <?php echo json_encode($nama_country); ?>},
			options: {
				responsive: true
			}
		};
 
		window.onload = function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		};
 
		document.getElementById('randomizeData').addEventListener('click', function() {
			config.data.datasets.forEach(function(dataset) {
				dataset.data = dataset.data.map(function() {
					return randomScalingFactor();
				});
			});
 
			window.myPie.update();
		});
 
		var colorNames = Object.keys(window.chartColors);
		document.getElementById('addDataset').addEventListener('click', function() {
			var newDataset = {
				backgroundColor: [],
				data: [],
				label: 'New dataset ' + config.data.datasets.length,
			};
 
			for (var index = 0; index < config.data.labels.length; ++index) {
				newDataset.data.push(randomScalingFactor());
 
				var colorName = colorNames[index % colorNames.length];
				var newColor = window.chartColors[colorName];
				newDataset.backgroundColor.push(newColor);
			}
 
			config.data.datasets.push(newDataset);
			window.myPie.update();
		});
 
		document.getElementById('removeDataset').addEventListener('click', function() {
			config.data.datasets.splice(0, 1);
			window.myPie.update();
		});
	</script>
</body>
 
</html>