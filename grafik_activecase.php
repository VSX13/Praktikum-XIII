<?php
include('koneksi2.php');
$country = mysqli_query($koneksi,"select * from tb_country");
while($row = mysqli_fetch_array($country)){
	$nama_country[] = $row['country'];
	
	$query = mysqli_query($koneksi,"select sum(active) as active from tb_acase where id_country='".$row['id_country']."'");
	$row = $query->fetch_array();
	$active_case[] = $row['active'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Bar Chart Active Case</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
<body>
	<div style="width: 800px;height: 800px">
		<canvas id="myChart"></canvas>
	</div>
 
 
	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($nama_country); ?>,
				datasets: [{
					label: 'Active Case',
					data: <?php echo json_encode($active_case); ?>,
					backgroundColor: 'rgba(255, 0, 0, 1)',
					borderColor: 'rgba(255, 0, 0, 1)',
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