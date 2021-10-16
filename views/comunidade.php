<section class="comunidade">

    <div class="comunidade-usuarios">
        <h2>Sugestões</h2>
        <div class="comunidade-boxes">
            <div class="comunidade-box">
                <ul>
                    <?php
                        $select = \MySql::conectar()->prepare("SELECT * FROM `tb_site.membros`");
                        $select->execute();
                        $select = $select->fetchAll();
                        foreach ($select as $key => $value){
                            if($value['id'] == $_SESSION['id_membro'])
                                continue;
                    ?>
                    <li>
                        <img src="<?php echo INCLUDE_PATH_PAINEL ?>uploads/<?php echo $value['imagem']; ?>" />
                        <div class="info">
                            <p><?php echo $value['nome']; ?>
                                <br />
                                <span><?php echo $value['email']; ?></span>
                            </p>
                            <?php
                                if($this->amigoPendente($value['id']) == false){
                            ?>
                                <a href="<?php echo INCLUDE_PATH ?>comunidade?addFriend=<?php echo $value['id'] ?>"><i data-feather="plus"></i></a>
                            <?php }else if($this->isAmigo($value['id'])){ ?>
                                <a style="opacity:.8" href="javascript:void(0);"><i data-feather="eye"></i></a>
                            <?php }else if($this->amigoPendente($value['id']) == true){ ?>
                                <a style="opacity:.8" href="javascript:void(0);"><i data-feather="plus"></i></a>
                            <?php } ?>
                        </div>
                    </li>
                    <?php } ?>
                </ul>
            </div><!--comunidade-box-->
        </div><!--comunidade-boxes-->
    </div><!--comunidade-usuarios-->
</section><!--comunidade-->