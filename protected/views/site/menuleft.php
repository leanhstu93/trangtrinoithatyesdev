
<div class="left menuleft">
    <!--
      <div class="searchbg w100">
        <input type="text" class="search-home key" name="key"  placeholder="Tìm kiếm.....">
        <div class="timkiembg"><span class="btn_timkiem"><img alt="icon tìm kiếm" src="images/search.png"></span></div>
      </div>
    -->
    <div class="head w100">DANH MỤC</div>
    <ul>
        <?php
        $criteria = new CDbCriteria();
        $criteria->with = "loaisanpham_lang";
        $criteria->condition = "Active = 1 and Parent = 0";
        $criteria->order= "t.Order";
        $data = Loaisanpham::model()->findAll($criteria);
        foreach ($data as $key => $value) {
            $router = Router::model()->find("idObject = " . $value->loaisanpham_lang->id . " AND type = " . Router::TYPE_PRODUCT_CATEGORY);
            ?>

            <li class="active">
                <a href="/<?php echo $router->alias ?>.html">
                    <?php echo $value->loaisanpham_lang->Name ?></a>
                <ul>
                    <?php
                    $criteria = new CDbCriteria();
                    $criteria->with = "loaisanpham_lang";
                    $criteria->condition = "Active = 1 and Parent = ".$value->id;
                    $criteria->order= "t.Order";
                    $data1 = Loaisanpham::model()->findAll($criteria);

                    foreach ($data1 as $key1 => $value1) {
                        $router1 = Router::model()->find("idObject = " . $value1->loaisanpham_lang->id . " AND type = " . Router::TYPE_PRODUCT_CATEGORY);
                        ?>
                        <li><a href="/<?php echo $router1->alias ?>.html"><i class="fa fa-caret-right" ></i> <?php echo $value1->loaisanpham_lang->Name ?></a></li>
                    <?php }
                    ?>
                </ul>
            </li>
        <?php } ?>
    </ul>
    <div class="clear"></div>


</div>