<?php
    namespace controladores;

    class perfilController{
        public static function index(){
            if(!isset($_SESSION['email_membro'])){
                include('views/login.php');
            }else{
                include('views/home.php');
            }
            if(isset($_GET['sair'])){
                unset($_SESSION['email_membro']);
                \Painel::redirect(INCLUDE_PATH);
            }
            
        }
        
        public static function login(){
            include('views/login.php');
        }
        
        public static function perfil(){
            include('views/perfil.php');
        }

        public static function publicar(){
            include('views/publicar.php');

            if(isset($_POST['feed_post'])){
                $mensagem = strip_tags($_POST['mensagem']);
                $imagem = $_FILES['imagem']['name'];

                    $sql = \MySql::conectar()->prepare("INSERT INTO `tb_site.feed` VALUES (null, ?, ?, ?)");
                    $sql->execute(array($_SESSION['id_membro'],$mensagem,$imagem));
            }
        }

    }
?>