<?php
$arrBread[0]["Name"] = $lsp->loaisanpham_lang->Name;
$criteria = new CDbCriteria();
$criteria->condition = "idNgonNgu = $this->lang and Active = 1";
$criteria->addInCondition("idLoai",$this->arridloai);
$criteria->order = "t.id desc";
$criteria->with = "loaisanpham_lang";
$arrloai = Loaisanpham::model()->findAll($criteria);
$j = 0;
for ($i= (count($arrloai)-1); $i >= 0; $i--) {
    $j++;
    $arrBread[$j]["Href"] = "/loai-san-pham/".$arrloai[$i]->loaisanpham_lang->Alias.".html";
    $arrBread[$j]["Name"] = $arrloai[$i]->loaisanpham_lang->Name;
}
$idParent = !empty( $arrloai[0]->id) ?  $arrloai[0]->id : 0;
$titleRight =  !empty($arrloai[0]->loaisanpham_lang->Name) ? $arrloai[0]->loaisanpham_lang->Name : $lsp->loaisanpham_lang->Name;

?>
<section class="container w1000 wrap-loaitin">
    <div class="wrp-mar w100">
        <?php
        $this->renderPartial("right", array("title" => $titleRight,"id" => $lsp->id,'idParent' => $idParent));
        $banner = Hinhanh::getDataByCustomSetting('banner_category');
        ?>
        <div class="left page-left">
            <div class="w100 wrp-adv">
                <img src="<?php echo $banner->hinhanh->url_image ?>" class="w100" />
            </div>
            <div class="head w100">
                <?php $this->renderPartial("//layouts/breadcrumb",array('data'=>$arrBread)); ?>
            </div>
            <div class="clear"></div>
            <ul class="list-pro">

                <?php
                $i = 0;
                foreach ($data as $key => $value) {
                    $i++;
                    $router = Router::model()->find("idObject = ". $value->sanpham_lang->id ." AND type = ".Router::TYPE_PRODUCT);
                    ?>
                    <li <?php echo ($i % 3 == 0) ? "sub" : "" ?> >
                        <a href="/<?php echo $router->alias ?>.html">
                            <div class="wrap-img-cate">
                                <img src="<?php echo $value->UrlImage ?>">
                            </div>
                            <div class="wrap-des-cate">
                                <h3><?php echo $value->sanpham_lang->Name ?></h3>
                            </div>
                        </a>
                    </li>
                <?php } ?>
            </ul>
            <div class="clear"></div>
            <?php $this->renderPartial("//layouts/pagination", array("pages" => $pages)); ?>
        </div>
    </div>
</section>
<?php $this->renderPartial('home-service'); ?>
