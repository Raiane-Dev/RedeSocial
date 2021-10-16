<div class="box-content">
<div class="box-interna">
    <h2><i data-feather="cast"></i> Adicionar Novo Módulo</h2>

    <?php
        if(isset($_POST['acao'])){
            $nome = $_POST['nome'];

            if($nome == ''){
                Painel::alert('erro','Você precisa preencher esse campo!');
            }else{
                $sql = \MySql::conectar()->prepare("INSERT INTO `tb_admin.modulos` VALUES (null, ?)");
                $sql->execute(array($nome));
                Painel::alert('sucesso','O módulo foi cadastrado com sucesso');
            }
        }
    ?>

    <form method="post" enctype="multipart/form-data">

    <label>Nome</label>
    <input type="text" name="nome" />

    <input type="submit" name="acao" value="Cadastrar Módulo">

    </form>
    </div><!--box-interna-->
    </div><!--box-interna-->