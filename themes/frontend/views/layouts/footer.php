<footer class="w100">
    <div class="w1000">
        <div class="grp-col3">
            <div class="col3">
                <?php
                $data = SinglePage::getDataByCustomSetting('one_footer');
                ?>
                <h3> <?php echo html_entity_decode($data->name) ?> </h3>
                <div class="content w100 text">
                    <?php echo html_entity_decode($data->content) ?>
                </div>
            </div>
            <div class="col3">
                <div class="content w100 txt">
                    <?php
                    $newsCategpry = Loaitin::getDataByCustomSetting('footer_col_2');
                    ?>
                    <h3><?php echo $newsCategpry->category->loaitin_lang->Name ?></h3>
                    <ul>
                    <?php
                       foreach ($newsCategpry->post as $item){
                    ?>
                            <li>
                                <a href="<?php echo Common::buildUrl($item->tintuc_lang->id,Router::TYPE_NEWS) ;?>">
                                    <?php echo html_entity_decode($item->tintuc_lang->Name) ?>
                                </a>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
            <div class="col3">
                <?php $map = Hinhanh::getDataByCustomSetting('map_footer');?>
                <h3> <?php echo $map->hinhanh->name ?> </h3>
                <div class="w100">
                    <img src="<?php echo $map->hinhanh->url_image ?>" class="w100" />
                </div>
            </div>
        </div>
    </div>
</footer>

<section class="w100 block-end-footer">
    2019 Copyright - trangtrinoithatyes.com - website design by Hdesign.com.vn
</section>