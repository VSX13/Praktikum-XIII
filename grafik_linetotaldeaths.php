<?php
include('koneksi2.php');
$country = mysqli_query($koneksi,"select * from tb_country");
while($row = mysqli_fetch_array($country)){
	$nama_country[] = $row['country'];
	
	$query = mysqli_query($koneksi,"select sum(total) as total from tb_tdeaths where id_country='".$row['id_country']."'");
	$row = $query->fetch_array();
	$total_deaths[] = $row['total'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Line Chart Total Deaths</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
<body>
	<div style="width: 800px;height: 800px">
		<canvas id="myChart"></canvas>
	</div>
 
 
	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'line',
			data: {
				labels: <?php echo json_encode($nama_country); ?>,
				datasets: [{
					label: 'Total Deaths',
					data: <?php echo json_encode($total_deaths); ?>,
					backgroundColor: 'rgb(127, 255, 1)',
					borderColor: 'rgb(127, 255, 1)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>