<section class="wrap-prodetail w100 wrap-loaitin">
    <div class="w1000">
        <?php

        $idCategoryFinal = array_pop($arridloai);
        $title_right = 'Danh mục sản phẩm';
        $idParentRight = 0;
        if(!empty($idCategoryFinal)) {
            $criteria = new CDbCriteria();
            $criteria->with = "loaisanpham_lang";
            $criteria->condition = "idNgonNgu = $this->lang and Active = 1 and t.id = " . $idCategoryFinal;
            $criteria->order = "t.id desc";
            #$criteria->addInCondition("idLoai",$this->arridloai);
            $categoryFinish = Loaisanpham::model()->find($criteria);
            $title_right = $categoryFinish->loaisanpham_lang->Name;
            $idParentRight =  $categoryFinish->id;
        }
        $j = 0;
        ?>
        <?php $this->renderPartial("right", array("title" => $title_right,"id" => $lsp->id,'idParent' => $idParentRight)); ?>
        <div class="right">
            <div class="left-pro">
                <div class="img-pro-de w100">
                    <ul class="slide-pro Carousel w100">
                        <li class="item">
                            <img class="w100" src="<?php echo $model->sanpham->UrlImage ?>"  title=""/>
                        </li>
                        <?php
                        $criteria = new CDbCriteria();
                        $criteria->condition = "Active = 1 and idSP = ".$model->sanpham->id;
                        $criteria->limit = 2;
                        $thumbnail = Thumbnails::model()->findAll($criteria);
                        foreach ($thumbnail as $key => $value) {
                            # code...
                            ?>
                            <li>
                                <img src="<?php echo $value->UrlImage ?>"  title="" />
                            </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="w100 product-contact">
                    <label class="w100">
                        <?php echo $model->Name ?>
                    </label>
                    <ul class="ttlh-pro w100">
                        <li>
                            <a href="">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span><?php echo $this->ttc->Email ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span><?php echo $this->ttc->Phone ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <span><?php echo $this->ttc->Address ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-eye" aria-hidden="true"></i>
                                <span> Lượt xem: <?php echo $model->sanpham->CountView ?></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="right-pro">
            <?php
            #  $this->renderPartial("//layouts/breadcrumb",array('data'=>$arrBread));
            ?>
            <div class="des-pro">
                <strong>Mô tả:</strong>
                <div class="w100 text">
                    <?php echo $model->MoTa ?>
                </div>
            </div>
                <div class="wrap-form-tuvan w100">
                    <?php $this->renderPartial("//layouts/form-tu-van"); ?>
                </div>
            </div>
            <div class="clear"></div>
            <div class="wrap-lsp w100 splq">
                <div class="head w100">Sản phẩm liên quan</div>
                <div class="clear"></div>
                <ul class="list-pro">
                    <?php
                    $criteria = new CDbCriteria();
                    $criteria->with = "sanpham_lang";
                    $criteria->condition = "Active = 1 and idLoai = ".$model->sanpham->idLoai." and t.id != $model->id and idNgonNgu = $this->lang";
                    $criteria->order = "t.id desc";
                    $criteria->limit = 6;
                    $splq = Sanpham::model()->findAll($criteria);
                    $i=0;
                    foreach ($splq as $key => $value) {
                        # code...
                        $i++;
                        ?>
                        <li class="<?php echo ($i%3 == 0)? "last":"" ?>" >
                            <a href="/sp/<?php echo $value->sanpham_lang->Alias ?>.html">
                                <div class="wrap-img-cate">
                                    <img src="<?php echo $value->UrlImage ?>">
                                </div>
                                <div class="wrap-des-cate">
                                    <h3 ><?php echo $value->sanpham_lang->Name ?></h3>

                                </div>

                            </a>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </div>
</section>

<?php $this->renderPartial("home-service"); ?>