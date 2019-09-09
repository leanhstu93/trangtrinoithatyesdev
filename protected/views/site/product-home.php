<?php
$criteria = new CDbCriteria();
$criteria->with = "loaisanpham_lang";
$criteria->condition = "Active = 1 and SetHome = 1";
//  $criteria->order ="t.id desc";
$criteria->limit= 5;
$lsp = Loaisanpham::model()->findAll($criteria);
$i = 0;
foreach ($lsp as $key => $value) {
    $i++;
# code...
?>

<section class="dieukhac-tc w100 <?php echo $i%2 == 0 ? 'old': '' ?>">
    <div class="w1000">
        <div class="tt w100">
            <?php echo $value->loaisanpham_lang->Name ?>
        </div>
        <div class="ct w100">
            <?php

            $criteria = new CDbCriteria();
            $criteria->condition = "Active = 1 and idLoai = ".$value->id;
            $criteria->with = "sanpham_lang";
            $criteria->order = "t.id desc";
            $criteria->limit = 8;
            $spnb = Sanpham::model()->findAll($criteria);
            foreach ($spnb  as $key1 => $value1) {
                $router = Router::model()->find("idObject = ". $value1->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);
                ?>
                <div class="col4">
                    <a href="<?php echo $router->alias ?>.html">
                        <div class="wrp-img">
                            <img src="<?php echo $value1->UrlImage ?>" class="w100">
                        </div>
                        <label><?php echo $value1->sanpham_lang->Name ?></label>
                    </a>
                </div>
            <?php }
            ?>
        </div>
    </div>
</section>
<?php } ?>

