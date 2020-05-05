<?php
$koneksi    = mysqli_connect("localhost", "root", "", "db_country");
$nama_country  = mysqli_query($koneksi, "SELECT country FROM tb_country");
$new_deaths   = mysqli_query($koneksi, "SELECT new FROM tb_ndeaths");
?>

<!doctype html>
<html>
 
<head>
	<title>Bar Doughnut New Deaths</title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
 
<body>
	<div id="canvas-holder" style="width:50%">
		<canvas id="chart-area"></canvas>
	</div>
	<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Bar Doughnut New Deaths</title>
    <script src="js/Chart.js"></script>
    <style type="text/css">
            .container {
                width: 40%;
                margin: 15px auto;
            }
    </style>
  </head>
  <body>

    <div class="container">
        <canvas id="doughnutchart" width="100" height="100"></canvas>
    </div>

  </body>
</html>

<script  type="text/javascript">
  var ctx = document.getElementById("doughnutchart").getContext("2d");
  var data = {
            labels: [<?php while ($p = mysqli_fetch_array($nama_country)) { echo '"' . $p['country'] . '",';}?>],
            datasets: [
            {
              label: "New Deaths",
              data: [<?php while ($p = mysqli_fetch_array($new_deaths)) { echo '"' . $p['new'] . '",';}?>],
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
					]
            }
            ]
            };

  var mydoughnutchart = new Chart(ctx, {
                  type: 'doughnut',
                  data: data,
                  options: {
                    responsive: true
                }
              });

</script>