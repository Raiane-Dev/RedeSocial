<section class="solicitacoes">
<h2>Solicitações</h2>

    <table>
    <?php 
        $solicitacoesPendentes = $this->listarSolicitacoes();
        foreach($solicitacoesPendentes as $key => $value){
            //Puxar informações do usuário que solicitou
            $membro = \modelos\membrosModel::getMembroById($value['id_from']);
    ?>
        <tr>
            <td><img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $membro['imagem'] ?>" /></td>
            <td><?php echo $membro['nome'] ?></td>
            <td><?php echo $membro['email']; ?></td>
            <td><a href="<?php echo INCLUDE_PATH ?>solicitacoes?aceitar=<?php echo $value['id_from']; ?>"><i data-feather="check"></i></a></td>
            <td><a href="<?php echo INCLUDE_PATH ?>solicitacoes?rejeitar=<?php echo $value['id_from']; ?>"><i data-feather="x"></i></a></td>
        </tr>
    <?php } ?>
    </table>
</section>