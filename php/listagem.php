<?php


	include("conexao.php");
	$sql = "SELECT * FROM cliente;";
	$res = mysqli_query($con, $sql);
	?>

	<html lang="pt-br">
			<head>
				<meta charset="UTF-8">
				<link rel="stylesheet" type="text/css" href="../css/estilo.css">
				<link rel="stylesheet" type="text/css" href="../css/tabela.css">
			</head>
			<body>
				<header>
	<div id="navegacao" >
		<div id="titulo">
			<a href="../index2.html"> Valhalla</a>
			<img src="../imagens/logo.png" width="50px">
		</div>

		<nav id="menu">
			<ol>
				<a href="../paginas/deuses.html"><li> deuses </li></a>
				<a href="../paginas/mitos.html"><li>mitos </li></a>
				<a href="../paginas/unas.html"><li>runas </li></a>
				<a href="../paginas/jogos.html"><li>jogos</li></a>
				<a href="../paginas/localizacao.html"><li>localização</li></a>
				<a href="../paginas/contato.html"><li>contato</li></a>
			</ol>
		</nav>	
	</div>
</header>
<br><br>
				<h1> Mensagens <h1>
			<table border="2" >
				<tr><td>Nome</td><td class="mensagem">Mensagem</td><td>Email</td><td class="deus">Deus Preferido</td><td class="lido">LIDO</td><td class="excluir">EXCLUIR</td></tr>
	<?php
	while($linha = mysqli_fetch_array($res)){
		$cod = $linha["cod"];
		$nome = $linha["nome"];
		$mensagem = $linha["mensagem"];
		$email = $linha["email"];
		$deus =$linha["deuspref"];
		$lido =$linha["lido"];
		echo "<tr><td>$nome</td>
				<td>$mensagem</td>
				<td>$email</td><td>$deus</td><td class='lido2'><a href='lido.php?cod=$cod'> ";
		if($lido=='0'){
			echo "LER<img src='../imagens/aviso.png' width='20px'>";
		}else{
			echo "LIDO<img src='../imagens/lido.png' width='20px'>";
		}
		echo"</a></td><td><a href='excluir.php?cod=$cod'>	<img src='../imagens/delete.png '' width='20px'></a></td></tr>";
	 }
	echo "</table>
	<a href='../paginas/admin.html'> Sair </a>
	</body></html>";
	?>
