<div class="box-content">
<div class="box-interna">
    <h2><i data-feather="user-plus"></i> Adicionar Novo Aluno</h2>

    <?php
        if(isset($_POST['acao'])){
            $nome = $_POST['nome'];
            $email = $_POST['email'];
            $senha = $_POST['senha'];

            if($nome == '' || $email == '' || $senha == ''){
                Painel::alert('erro','Você precisa preencher todos os campos');
            }else{
                $sql = \MySql::conectar()->prepare("INSERT INTO `tb_admin.alunos` VALUE (null, ?, ?, ?)");
                $sql->execute(array($nome,$email,$senha));
                Painel::alert('sucesso','Cadastrado com sucesso');
            }
        }
    ?>

    <form method="post" enctype="multipart/form-data">

    <label>Nome</label>
    <input type="text" name="nome" />

    <label>Email</label>
    <input type="email" name="email" />
    
    <label>Senha</label>
    <input type="password" name="senha" />

    <input type="submit" name="acao" value="Cadastrar Aluno">

    </form>
</div><!--box-interna-->
</div><!--box-interna-->