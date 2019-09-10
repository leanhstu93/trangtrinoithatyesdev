<section class="container w1000">
    <div class="w1000">
        <div class="right page-news-detail " style="width: 100%">
            <div class="w100">
                <?php
                $arrBread[0]["Name"] = $model->name;
                $this->renderPartial("//layouts/breadcrumb-news",array('data'=>$arrBread));?>
            </div>
            <div class="tieude-news w100"><?php echo $model->name ?></div>

            <div class="des-newsdetail w100"><?php echo $model->description ?></div>
            <div class="ct-newsdetail w100">
                <?php echo $model->content ?>
            </div>
        </div>
    </div>
</section>