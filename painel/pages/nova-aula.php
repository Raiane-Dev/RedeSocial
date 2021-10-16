<div class="box-content">
<div class="box-interna">
    <h2><i data-feather="cast"></i> Adicionar Nova Aula</h2>

    <?php
        if(isset($_POST['acao'])){
            $nome = $_POST['nome'];
            $modulo_id = $_POST['modulo_id'];
            $link = $_POST['link_aula'];

            if($nome == '' || $link == ''){
                Painel::alert('erro','Preencha todos os campos');
            }else{
                $sql = \MySql::conectar()->prepare("INSERT INTO `tb_admin.aulas` VALUES (null, ?, ?, ?)");
                $sql->execute(array($nome,$modulo_id,$link));
                Painel::alert('sucesso','Aula cadastrada com sucesso');
            }
        }
    ?>

    <form method="post" enctype="multipart/form-data">

    <label>Nome da Aula</label>
    <input type="text" name="nome" />

    <label>Módulo</label>
    <select name="modulo_id">
        <?php
            $modulos = \MySql::conectar()->prepare("SELECT * FROM `tb_admin.modulos`");
            $modulos->execute();
            $modulos = $modulos->fetchAll();
            foreach($modulos as $key => $value){
        ?>
            <option value="<?php echo $value['id'] ?>"><?php echo $value['nome'] ?></option>
        <?php } ?>
    </select>

    <label>Link da Aula para o Iframe:</label>
    <input type="text" name="link_aula" />

    <input type="submit" name="acao" value="Cadastrar Aula">

    </form>
    </div><!--box-interna-->
    </div><!--box-interna-->