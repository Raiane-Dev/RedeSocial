<div class="box-content">
<div class="box-interna">

<h2>Pedidos</h2>
        <div class="wraper-table-col4">
        <table>
            <tr>
                <td class="title">Referencia ID</td>
                <td class="title">ID do Produto</td>
                <td class="title">Total</td>
                <td class="title">Status</td>
            </tr>

        <?php
            $sql = MySql::conectar()->prepare("SELECT * FROM `tb_admin.pedidos`");
            $sql->execute();
            $pedidos = $sql->fetchAll();
            foreach ($pedidos as $key => $value){
                if($value['status'] == '1'){
                    $value['status'] = 'Pendente';
                }else if($value['status'] == '2'){
                    $value['status'] = 'Análisando';
                }else if($value['status'] == '3'){
                    $value['status'] = 'Pago';
                }else if($value['status'] == '4'){
                    $value['status'] = 'Dísponivel';
                }else if($value['status'] == '5'){
                    $value['status'] = 'Disputa';
                }else if($value['status'] == '6'){
                    $value['status'] = 'Devolvido';
                }else if($value['status'] == '7'){
                    $value['status'] = 'Cancelado';
                }
        ?>
        <tr>
            <td><?php echo $value['reference_id']; ?></td>
            <td><?php echo $value['produto_id']; ?></td>
            <td><?php echo Painel::convertMoney($value['amount']); ?></td>
            <td><?php echo $value['status']; ?></td>
        </tr>

        <?php } ?>
        </table>
</div><!--box-interna-->
</div><!--box-content-->
