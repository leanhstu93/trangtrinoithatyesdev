<section class="container">
    <div class="w1000">
        <div class="page-news-wrap-detail w100">
            <?php $this->renderPartial("menuleft");?>
            <div class="right page-news-detail">
                <div class="w100">
                    <?php

                    $arrBread[0]["Name"] = $model->Name;
                    $criteria = new CDbCriteria();
                    $criteria->with = "loaitin_lang";
                    $criteria->condition = "idNgonNgu = $this->lang and Active = 1";
                    $criteria->order = "t.id desc";
                    $criteria->addInCondition("idLoaiTin",$this->arridloai);
                    $arrloai = Loaitin::model()->findAll($criteria);
                    $j = 0;
                    for ($i= (count($arrloai)-1); $i >= 0; $i--) {
                        # code...
                        $j++;
                        $arrBread[$j]["Name"] = $arrloai[$i]->loaitin_lang->Name;
                        $arrBread[$j]["Href"] = "/loai-tin/".$arrloai[$i]->loaitin_lang->Alias.".html";
                    }
                    $this->renderPartial("//layouts/breadcrumb-news",array('data'=>$arrBread));?>
                    <div class="line w100"> <img class="w100" src="/images/line.jpg"> </div>
                </div>
                <div class="tieude-news w100"><?php echo $model->Name ?></div>
                <div class="time-stamp">

                    <small class="date"><i class="fa fa-clock-o"></i> <?php echo date("d/m/Y",$model->tintuc->Date) ?></small> |
                    <small> <i class="fa fa-user"></i> <?php echo $model->tintuc->quantri->HoTen ?></small> |
                    <small> <i class="fa fa-eye" aria-hidden="true"></i>  <?php echo $model->tintuc->ViewCount ?> </small>
                </div>
                <div class="des-newsdetail w100"><?php echo $model->Description ?></div>
                <div class="ct-newsdetail w100">
                    <?php echo $model->Content ?>
                </div>
                <div class="clear"></div>
                <style type="text/css">
                    .share-news li img{width: 100%}
                    .share-news li{
                        float: right;
                        width: 30px;
                    }
                </style>

                <?php $this->renderPartial("//layouts/comment");?>
                <div class="rela-news w100">
                    <div class="head">Tin liên quan</div>
                    <div class="line w100">
                        <img class="w100" src="/images/line.jpg">
                    </div>
                    <ul class="w100">
                        <?php
                        $tlq = Common::postRelated($model->id,$model->tintuc->idLoaiTin,$this->lang);
                        if(isset($tlq)){
                            foreach ($tlq as $key => $value) {
                                $router = Router::model()->find("idObject = ". $value->id ." AND type = ".Router::TYPE_NEWS);
                                ?>
                                <li>
                                    <a href="/tin-tuc/<?php echo $router->alias ?>.html" class="fa fa-link">
                                        <img width="100px" class="icon-arrow" src="<?php echo $value->UrlImage ?>">
                                        <label><?php echo $value->tintuc_lang->Name; ?></label>
                                    </a>
                                </li>
                            <?php }
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>