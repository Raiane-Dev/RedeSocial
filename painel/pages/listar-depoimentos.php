<?php
	if(isset($_GET['excluir'])){
		$idExcluir = intval($_GET['excluir']);
		Painel::deletar('tb_site.depoimentos',$idExcluir);
		Painel::redirect(INCLUDE_PATH_PAINEL.'listar-depoimentos');
	}else if(isset($_GET['order']) && isset($_GET['id'])){
		Painel::orderItem('tb_site.depoimentos',$_GET['order'],$_GET['id']);
	}

	$paginaAtual = isset($_GET['pagina']) ? (int)$_GET['pagina'] : 1;
	$porPagina = 4;
	
	$depoimentos = Painel::selectAll('tb_site.depoimentos',($paginaAtual - 1) * $porPagina,$porPagina);
	
?>
<div class="box-content">
<div class="box-interna">
	<h2><i data-feather="list" aria-hidden="true"></i> Depoimentos Cadastrados</h2>
	<div class="wraper-table-col6">
	<table>
		<tr>
			<td class="title">Nome</td>
			<td class="title">Data</td>
			<td class="title">#</td>
			<td class="title">#</td>
			<td class="title">#</td>
			<td class="title">#</td>
		</tr>

		<?php
			foreach ($depoimentos as $key => $value) {
		?>
		<tr>
			<td><?php echo $value['nome']; ?></td>
			<td><?php echo $value['data']; ?></td>
			<td><a class="btn edit" href="<?php echo INCLUDE_PATH_PAINEL ?>editar-depoimento?id=<?php echo $value['id']; ?>"><i class="fa fa-pencil"></i> Editar</a></td>
			<td><a actionBtn="delete" class="btn delete" href="<?php echo INCLUDE_PATH_PAINEL ?>listar-depoimentos?excluir=<?php echo $value['id']; ?>"><i class="fa fa-times"></i> Excluir</a></td>
			<td><a class="btn order" href="<?php echo INCLUDE_PATH_PAINEL ?>listar-depoimentos?order=up&id=<?php echo $value['id'] ?>"><i class="fa fa-angle-up"></i></a></td>
			<td><a class="btn order" href="<?php echo INCLUDE_PATH_PAINEL ?>listar-depoimentos?order=down&id=<?php echo $value['id'] ?>"><i class="fa fa-angle-down"></i></a></td>
		</tr>

		<?php } ?>

	</table>
	</div>

	<div class="paginacao">
		<?php
			$totalPaginas = ceil(count(Painel::selectAll('tb_site.depoimentos')) / $porPagina);

			for($i = 1; $i <= $totalPaginas; $i++){
				if($i == $paginaAtual)
					echo '<a class="page-selected" href="'.INCLUDE_PATH_PAINEL.'listar-depoimentos?pagina='.$i.'">'.$i.'</a>';
				else
					echo '<a href="'.INCLUDE_PATH_PAINEL.'listar-depoimentos?pagina='.$i.'">'.$i.'</a>';
			}

		?>
	</div><!--paginacao-->

</div><!--box-interna-->
</div><!--box-content-->