<?php
	include ("conexao.php");
	$cod = $_GET['cod'];
	
	$sql = "UPDATE cliente SET lido = '1' WHERE cod = $cod;";
	mysqli_query($con, $sql);
	
	header("refresh:0; URL=http:listagem.php");
?>