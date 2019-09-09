<?php $hinhanh = Hinhanh::getDataByCustomSetting('bg_middle_home'); ?>
<section class="bg-middle w100" style="background-image: url(<?php echo $hinhanh->hinhanh->url_image ?>);
        background-position: 50% 139px">
    <div class="w1000">
        <div class="tt">
            <?php echo $hinhanh->hinhanh->name ?>
        </div>
        <div class="content text">
            <?php echo $hinhanh->hinhanh->description ?>
        </div>
    </div>
</section>

