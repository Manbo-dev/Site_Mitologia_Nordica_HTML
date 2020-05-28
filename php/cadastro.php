<?php
	include ("conexao.php");
	$nome = $_POST['nome'];
	$mensagem = $_POST['mensagem'];
	$email = $_POST['email'];
	$deus = $_POST['deus'];
	$span = $_POST['span'];
	$grau = $_POST['grau'];
	$sql = "INSERT INTO cliente VALUES (default, '$nome', '$mensagem', '$email', '$deus','0','$span','$grau');";
	mysqli_query($con, $sql);
	

	
	
	header("refresh:0; URL=../paginas/contato.html");
?>	