<?php
    namespace controladores;

    class solicitacoesController{
        public function index(){
            include('views/solicitacoes.php');
        

        if(isset($_GET['aceitar'])){
            $idSolicitante = (int)$_GET['aceitar'];
            $sql = \MySql::conectar()->prepare("UPDATE `tb_site.solicitacoes` SET status = 1 WHERE id_from = ? AND id_to = ?");
            $sql->execute(array($idSolicitante,$_SESSION['id_membro']));
        }
        else if(isset($_GET['rejeitar'])){
            $idSolicitante = (int)$_GET['rejeitar'];
            $sql = \MySql::conectar()->prepare("DELETE FROM `tb_site.solicitacoes` WHERE id_from = ? AND id_to = ?");
            $sql->execute(array($idSolicitante,$_SESSION['id_membro']));
        }

    }
    
        public static function listarSolicitacoes(){
            if(isset($_SESSION['email_membro'])){
            $sql = \MySql::conectar()->prepare("SELECT * FROM `tb_site.solicitacoes` WHERE id_to = ? AND status = 0");
            $sql->execute(array($_SESSION['id_membro']));
            }else{
                $sql = \MySql::conectar()->prepare("SELECT * FROM `tb_site.solicitacoes`");
                $sql->execute();
            }

            return $sql->fetchAll();
        }
        
    }
?>