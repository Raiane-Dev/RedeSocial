<?php

    namespace controladores;

    class comunidadeController{
        public function index(){
            if(isset($_GET['addFriend'])){
                $idAmigo = (int)$_GET['addFriend'];
                if($this->amigoPendente($idAmigo) == false){
                $this->solicitarAmizade($idAmigo);
                echo '<script> alert("Solicitação Enviada!"); </script>';
            }else{
                echo '<script> alert("Você já enviou uma solicitação de amizade."); </script>';
            }
            \Painel::redirect(INCLUDE_PATH.'comunidade');
        }
        include('views/comunidade.php');
    }
        public function solicitarAmizade($idAmigo){
            $sql = \MySql::conectar()->prepare("INSERT INTO `tb_site.solicitacoes` VALUES (null, ?, ?, 0)");
            $sql->execute(array($_SESSION['id_membro'],$idAmigo));
        }
        public function amigoPendente($idAmigo){
            $sql = \MySql::conectar()->prepare("SELECT * FROM `tb_site.solicitacoes` WHERE (id_from = ? AND id_to = ? AND status = 0) OR (id_from = ? AND id_to = ? AND status = 0)");
            $sql->execute(array($_SESSION['id_membro'],$idAmigo,$idAmigo,$_SESSION['id_membro']));
            if($sql->rowCount() == 1){
                return true;
            }else{
                return false;
            }
        }

        public function isAmigo($idAmigo){
            $sql = \MySql::conectar()->prepare("SELECT * FROM `tb_site.solicitacoes` WHERE (id_from = ? AND id_to = ? AND status = 1) OR (id_from = ? AND id_to = ? AND status = 1)");
            $sql->execute(array($_SESSION['id_membro'],$idAmigo,$idAmigo,$_SESSION['id_membro']));
            if($sql->rowCount() == 1){
                return true;
            }else{
                return false;
            }

        }
    
    }

?>