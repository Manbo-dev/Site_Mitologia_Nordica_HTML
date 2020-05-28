<?php
	session_start();
	
	include "conexao.php";
	
	$usuario = $_POST['usuario'];
	$se = $_POST['senha'];
	
	$sql = "select * from usuario where usuario='$usuario';";
	$res = mysqli_query($con, $sql);
		

	while($l = mysqli_fetch_array($res)){
		$senha = $l['senha'];
		if($senha == $se){
			header("refresh:0; URL=listagem.php");
		}else{
			header("refresh:0; URL=../paginas/admin.html");
		}
	}
?>