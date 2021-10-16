<?php

    include('config.php');
    Site::updateUsuarioOnline();
    Site::contador();

    include('views/modelos/header.php');

    $homeController = new \controladores\homeController();
    $perfilController = new \controladores\perfilController();
    $comunidadeController = new \controladores\comunidadeController();
    $solicitacoesController = new \controladores\solicitacoesController();

    Router::get('/',function() use ($perfilController){
        $perfilController->index();
    });
    Router::get('/login',function() use ($perfilController){
        $perfilController->login();
    });
    Router::get('/perfil', function() use ($perfilController){
        $perfilController->perfil();
    });
    Router::get('sair',function() use ($perfilController){
        $perfilController->sair();
    });
    Router::get('/comunidade', function() use ($comunidadeController){
        $comunidadeController->index();
    });
    Router::get('/solicitacoes', function() use ($solicitacoesController){
        $solicitacoesController->index();
    });
    Router::get('/publicar', function() use ($perfilController){
        $perfilController->publicar();
    });

    if(Router::isExecuted() == false){
        include('views/404.php');
        die();
    }
    include('views/modelos/footer.php');

?>