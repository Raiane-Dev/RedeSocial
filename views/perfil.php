<section class="perfil">
    <div class="perfil-imagem">
    <?php
        if(isset($_SESSION['img_membro'])){ ?>
            <img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $_SESSION['img_membro']; ?>" />
        <?php }else{ ?>
            <img src="http://demo.foxthemes.net/instellohtml/assets/images/avatars/avatar-2.jpg" />
        <?php } ?>
    </div><!--perfil-imagem-->
    <div class="perfil-bio">
        <h2><?php echo $_SESSION['nome_membro']; ?></h2>
        <p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum</p>
        <span>Movies</span>
        <input type="submit" value="Add Friend" />
        <input type="submit" value="Send Message" />
        <span class="icon"><i data-feather="arrow-down"></i></span>
        <ul>
            <li> 120 <span> Posts</span></li>
            <li> 420 <span> Followers</span></li>
            <li> 530 <span> Following</span></li>
        </ul>
    </div><!--perfil-bio-->
</section>

<?php 
    $amigos = \modelos\membrosModel::listarAmigos();
?>
<section class="usuarios-perfil">
    <div class="comunidade-usuarios">
        <div class="comunidade-boxes">
            <div class="comunidade-box">
                <ul>
                    <?php
                        foreach($amigos as $key => $value){
                            $membro = \modelos\membrosModel::getMembroById($value);
                    ?>
                    <li>
                        <img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $membro['imagem']; ?>" />
                        <div class="info">
                            <p><?php echo $membro['nome']; ?>
                                <br />
                                <span><?php echo $membro['email']; ?></span>
                            </p>
                                <a href="<?php echo INCLUDE_PATH ?>comunidade?addFriend=<?php echo $membro['id'] ?>"><i data-feather="eye"></i></a>
                        </div>
                    </li>
                    <?php } ?>
                </ul>
            </div><!--comunidade-box-->
        </div><!--comunidade-boxes-->
    </div><!--comunidade-usuarios-->
</section>

<section class="posts-perfil">
    <h2>Explore</h2>
    <div class="posts-perfil">

        <?php
            $postsFeed = \MySql::conectar()->prepare("SELECT * FROM `tb_site.feed` WHERE id = $_SESSION[id_membro]");
            $postsFeed->execute();
            $postsFeed = $postsFeed->fetchAll();
            foreach($postsFeed as $key => $value){
        ?>
        <div class="post-single">
            <img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $value['imagem']; ?>" />
        </div><!--post-single-->
        <?php } ?>

    </div><!--posts-perfil-->
</section>