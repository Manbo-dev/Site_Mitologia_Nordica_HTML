<?php
	$con = mysqli_connect("localhost", "root", "senha") or die ("Não foi possível conectar ao banco de dados.");
	mysqli_select_db($con, "guilherme") or die ("Não fpo possível encontrar o banco de dados.");
?>