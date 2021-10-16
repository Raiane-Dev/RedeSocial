<section class="login">
<div class="login">

        <?php
            if(isset($_POST['login'])){
                $email = $_POST['email'];
                $senha = $_POST['senha'];
                $verifica = \MySql::conectar()->prepare("SELECT * FROM `tb_site.membros` WHERE email = ? AND senha = ?");
                $verifica->execute(array($email,$senha));
                if($verifica->rowCount() == 1){
                    $info = $verifica->fetch();
                    $_SESSION['email_membro'] = $email;
                    $_SESSION['id_membro'] = $info['id'];
                    $_SESSION['nome_membro'] = $info['nome'];
                    $_SESSION['img_membro'] = $info['imagem'];
                    \Painel::redirect(INCLUDE_PATH.'perfil');
                }else{
                    echo 'Email ou senha incorreta.';
                }
            }

            //Cadastrar
            if(isset($_POST['cadastro'])){
                $nome = $_POST['nome'];
                $email = $_POST['email'];
                $senha = $_POST['senha'];
                $imagem = $_FILES['imagem'];

                if($nome === ''){
                    echo '<h6>O campo não pode estar vazio</h6>';
                }else if($senha === ''){
                    echo '<h6>O campo não pode estar vazio</h6>';
                }else if($email === ''){
                    echo '<h6>O campo não pode estar vazio</h6>';
                }else if(\Painel::imagemValida($imagem) == false){
                    echo '<h6>A imagem não é válida.</h6>';
                }else{
                    //Vamos cadastrar!
                    $verifica = \MySql::conectar()->prepare("SELECT email FROM `tb_site.membros` WHERE email = ?");
                    $verifica->execute(array($email));
                    if($verifica->rowCount() == 0){
                    $idImagem = \Painel::uploadFile($imagem);
                    $sql = \MySql::conectar()->prepare("INSERT INTO `tb_site.membros` VALUES (null, ?, ?, ?, ?)");
                    $sql->execute(array($nome,$email,$senha,$idImagem));
                    echo '<h6>Cadastrado com sucesso</h6>';
                    }else{
                        echo "Esse email já está em uso.";
                    }
                }
            }
        ?>
        
        <form id="logar" method="post" enctype="multipart/form-data">
        <h2>Log in</h2>

            <label>Seu email</label>
            <input type="email" name="email" placeholder="example@mydomain.com" />

            <input type="password" name="senha" placeholder="*******" />

            <label>Lembrar-me</label><input type="checkbox" name="lembrar" />
            <input type="submit" name="login" value="Login" />

            <button id="nao-possui">Não possuí uma conta? cadastre-se agora.</button>

        </form>

        <form id="cadastrar" method="post" enctype="multipart/form-data">
        <h2>Cadastrar</h2>

            <input type="text" name="nome" placeholder="Nome Completo" />

            <input type="email" name="email" placeholder="example@mydomain.com" />

            <input type="password" name="senha" placeholder="*******" />

            <input type="file" name="imagem" />

            <label>Lembrar-me</label><input type="checkbox" name="lembrar" />
            <input type="submit" name="cadastro" value="Cadastrar" />

        </form>
    </div>
</section>