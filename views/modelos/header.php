<!DOCTYPE html>
<html>
<head>
    <title>Rede Social</title>
    <script src="https://unpkg.com/feather-icons"></script>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?php echo INCLUDE_PATH ?>estilo/style.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<body>
<base base="<?php echo INCLUDE_PATH; ?>" />
<header>
	<div class="header">
		<div class="logo-header">
			<a href="<?php echo INCLUDE_PATH ?>"><h2>Raiane</h2></a>
			<a href="<?php echo INCLUDE_PATH ?>?sair"><i data-feather="log-out"></i></a>
		</div><!--logo-header-->
		<div class="pesquisa-header">
			<i data-feather="search"></i><input type="search" placeholder="Pesquisar..." />
		</div><!--pesquisa-header-->
		<div class="icones-header">
			<ul>
				<?php $solicitacoesPendentes = count(\controladores\solicitacoesController::listarSolicitacoes()); ?>
				<li><a href="<?php echo INCLUDE_PATH ?>publicar"><button><i data-feather="plus-circle"></i> Publicar</button></a></li>
				<li><i data-feather="message-square"></i></li>
				<li><a href="<?php echo INCLUDE_PATH ?>solicitacoes"><i data-feather="bell"></i><span class="notificacoes-contador"><?php echo $solicitacoesPendentes; ?></span></a></li>
				<li>
				<?php
					if(isset($_SESSION['img_membro'])){ ?>
            		<img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $_SESSION['img_membro']; ?>" />
        		<?php }else{ ?>
            		<img src="http://demo.foxthemes.net/instellohtml/assets/images/avatars/avatar-2.jpg" />
        		<?php } ?>
				</li>
			</ul>
		</div><!--icones-header-->
	</div><!--header-->
</header>

<section class="conteudo-geral">
<main>
	<div class="sidebar">
		<div class="usuario">
			<?php
				if(isset($_SESSION['img_membro'])){ ?>
            		<img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $_SESSION['img_membro']; ?>" />
        		<?php }else{ ?>
            		<img src="http://demo.foxthemes.net/instellohtml/assets/images/avatars/avatar-2.jpg" />
        		<?php } ?>
			<h6>Nome User</h6>
			<ul>
				<li>Post <br /> <span> 130 </span></li>
				<li>Following <br /> <span> 2.200 </span></li>
				<li>Followers <br /> <span> 1.325 </span></li>
			</ul>
		</div><!--usuarios-->
		<div class="menu">
			<nav>
				<ul>
					<li><a href="<?php echo INCLUDE_PATH ?>"><i data-feather="grid"></i> Feed</a></li>
					<li><a href="<?php echo INCLUDE_PATH ?>comunidade"><i data-feather="search"></i> Comunidade</a></li>
					<li><a href="<?php echo INCLUDE_PATH ?>"><i data-feather="send"></i> Mensagens</a></li>
					<li><a href="<?php echo INCLUDE_PATH ?>solicitacoes"><i data-feather="coffee"></i> Solicitações</a></li>
					<li><a href="<?php echo INCLUDE_PATH ?>"><i data-feather="settings"></i> Configurações</a></li>
					<li><a href="<?php echo INCLUDE_PATH ?>perfil"><i data-feather="user"></i> Meu Perfil</a></li>
					<li><a href="?sair"><i data-feather="log-out"></i> Logout</a></li>
			</nav>
		</div><!--menu-->
	</div><!--sidebar-->
</main>

<section class="conteudo">