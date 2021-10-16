<section class="feed">
    <div class="feed">
    <h2>Feed</h2>
        <div class="feed-box">

        <?php
            $postsFeed = \MySql::conectar()->prepare("SELECT * FROM `tb_site.feed` ORDER BY id DESC");
            $postsFeed->execute();
            $postsFeed = $postsFeed->fetchAll();
            foreach($postsFeed as $key => $value){
                $membro = \modelos\membrosModel::getMembroById($value['membro_id']);
        ?>
            <div class="feed-post">
                <div class="usuario-post">
                    <div><img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $membro['imagem']; ?>" /></div>
                    <div><label><?php echo $membro['nome']; ?></label></div>
                    <div><i data-feather="more-horizontal"></i></div>
                </div><!--usuario-post-->
                <div class="imagem-post">
                    <p><?php echo $value['post'] ?></p>
                    <img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php $value['imagem']; ?>" />
                </div><!--imagem-post-->
                <div class="metricas-post">
                    <ul>
                        <li><i data-feather="thumbs-up"></i> Like</li>
                        <li><i data-feather="message-circle"></i> Comment</li>
                        <li><i data-feather="share-2"></i> Share</li>
                    </ul>
                    <p>Liked <span>Jhonson</span> and <span>209</span> Others</p>
                </div><!--metricas-post-->
                <div class="comentarios-feed">
                    <div class="comentario-single">
                        <img src="http://demo.foxthemes.net/instellohtml/assets/images/post/img4.jpg" />
                        <p>In ut odio libero vulputate </p>
                    </div><!--comentario-single-->
                    <div class="comentar">
                        <input type="text" placeholder="Adicionar seu comentário" />
                    </div><!--comentar-->
                </div><!--comentarios-feed-->
            </div><!--feed-post-->
        <?php } ?>

        </div><!--feed-box-->
    </div><!--feed-news-->

    <div class="feed-relacoes">
        <div class="lista-box">
            <div class="lista-amigos">
                <h4>Who to follow</h4>
                <ul>
                    <li>
                        <img src="http://demo.foxthemes.net/instellohtml/assets/images/avatars/avatar-5.jpg" />
                        <p>Lorem Ipsum
                            <br />
                            <span>New York</span>
                        </p>
                        <input type="submit" value="follow" />
                    </li>
                </ul>
            </div><!--lista-amigos-->
        </div><!--lista-box-->

        <div class="sugestoes-box">
            <div class="sugestoes-amigos">
                <h4>Suggestions</h4>
                <ul>
                    <li>
                        <img src="http://demo.foxthemes.net/instellohtml/assets/images/avatars/avatar-6.jpg" />
                        <p>Lorem Ipsum
                            <br />
                            <span>New York</span>
                        </p>
                        <button><i data-feather="user-plus"></i></button>
                    </li>
                </ul>
            </div><!--sugestoes-amigos-->
        </div><!--sugestoes-box-->
    </div><!--feed-relacoes-->


</section>