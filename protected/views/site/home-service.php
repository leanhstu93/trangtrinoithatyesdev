<?php $data = Loaitin::getDataByCustomSetting('midle_home');?>
<section class="service-home w100">
    <div class="w1000">
        <div class="tt">
            <?php echo $data->category->loaitin_lang->Name ?>
        </div>
        <div class="title-desc">
            <?php echo $data->category->loaitin_lang->desc ?>
        </div>
        <div class="content w100">
            <div class="wrap-col3">
                <?php
                foreach ($data->post as $item) {
                    $router = Router::model()->find("idObject = ". $item->tintuc_lang->id ." AND type = ".Router::TYPE_NEWS);
                ?>
                <div class="col3">
                    <a title="<?php echo $item->tintuc_lang->Name ?>"
                       href="<?php echo $router->alias ?>.html">
                        <div class="wrp-img w100">
                            <img src="<?php echo $item->UrlImage ?>" class="w100">
                            <div class="wrp-date">
                                <span class="text-day">
                                    <?php echo date('d',$item->Date) ?>
                                </span><br>
                                <span>
                                    <?php echo date('m/y',$item->Date) ?>
                                </span>

                            </div>
                        </div>
                        <label>
                            <?php echo $item->tintuc_lang->Name ?>
                        </label>
                        <div class="wrap-desc text">
                            <?php echo $item->tintuc_lang->Description ?>
                        </div>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</section>