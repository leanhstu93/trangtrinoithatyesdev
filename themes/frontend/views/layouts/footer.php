<div class="ht-seo">    <div class="hd-container">        <div class="hd-row">            <div class="hd-col m3">                <ul>                    <?php                    $criteria = new CDbCriteria();                    $criteria->with = "sanpham_lang";                    $criteria->condition ="Active = 1 and idNgonNgu = $this->lang" ;                    $criteria->limit = 4;                    $criteria->offset = 0;                    $data = Sanpham::model()->findAll($criteria);                    $count = Sanpham::model()->count($criteria);                    // Common::debug($model);                    if($count > 0){                        foreach ($data as $item) {                            $router = Router::model()->find("idObject = ". $item->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);                            ?>                            <li>                                <a href="<?php echo $router->alias ?>.html"                                   title="<?php echo $item->sanpham_lang->NameShort ?>">                                    <?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>                                </a>                            </li>                            <?php                        }                    }                    ?>                </ul>            </div>            <div class="hd-col m3">                <ul>                    <?php                    $criteria->offset = 4;                    $data = Sanpham::model()->findAll($criteria);                    $count = Sanpham::model()->count($criteria);                    // Common::debug($model);                    if($count > 0){                        foreach ($data as $item) {                            $router = Router::model()->find("idObject = ". $item->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);                            ?>                            <li>                                <a href="<?php echo $router->alias ?>.html"                                   title="<?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>">                                    <?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>                                </a>                            </li>                            <?php                        }                    }                    ?>                </ul>            </div>            <div class="hd-col m3">                <ul>                    <?php                    $criteria->offset = 8;                    $data = Sanpham::model()->findAll($criteria);                    $count = Sanpham::model()->count($criteria);                    // Common::debug($model);                    if($count > 0){                        foreach ($data as $item) {                            $router = Router::model()->find("idObject = ". $item->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);                            ?>                            <li>                                <a href="<?php echo $router->alias ?>.html"                                   title="<?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>">                                    <?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>                                </a>                            </li>                            <?php                        }                    }                    ?>                </ul>            </div>            <div class="hd-col m3">                <ul>                    <?php                    $criteria->offset = 12;                    $data = Sanpham::model()->findAll($criteria);                    $count = Sanpham::model()->count($criteria);                    // Common::debug($model);                    if($count > 0){                        foreach ($data as $item) {                            $router = Router::model()->find("idObject = ". $item->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);                            ?>                            <li>                                <a href="<?php echo $router->alias ?>.html"                                   title="<?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>">                                    <?php echo html_entity_decode($item->sanpham_lang->NameShort) ?>                                </a>                            </li>                            <?php                        }                    }                    ?>                </ul>            </div>        </div>    </div></div><?php  $ttc = Thongtinchung::model()->find(" idNgonNgu = $this->lang ");  $ch = Cauhinh::model()->find("id = 1 ");?><footer class="footer">    <div class="w1000">        <div class="row">            <div class="hd-col m4">                <div class="ftbox col1">                    <?php echo html_entity_decode($this->footer->col1) ?>                </div>                <div class="box-list-icon">                    <ul>                        <li>                            <a href="<?php echo $ttc->Facebook ?>" target="_blank">                                <i class="fa fa-facebook"></i>                            </a>                        </li>                        <li>                            <a href="<?php echo $ttc->Google ?>" target="_blank">                                <i class="fa fa-google-plus"></i>                            </a>                        </li>                        <li>                            <a href="<?php echo $ttc->Youtube ?>" target="_blank">                                <i class="fa fa-youtube"></i>                            </a>                        </li>                        <li>                            <a href="<?php echo $ttc->Twitter ?>" target="_blank">                                <i class="fa fa-twitter"></i>                            </a>                        </li>                        <li>                            <a href="<?php echo $ttc->Pinterest ?>" target="_blank">                                <i class="fa fa-instagram"></i>                            </a>                        </li>                    </ul>                </div>            </div>            <div class="hd-col m4">                <div class="ftbox col2">                    <?php echo html_entity_decode($this->footer->col2) ?>                </div>            </div>            <div class="hd-col m4">                <div class="ftbox col2">                    <?php echo html_entity_decode($this->footer->col3) ?>                </div>            </div>        </div>    </div></footer>