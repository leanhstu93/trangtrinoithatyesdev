<?php$header = Hinhanh::getDataByCustomSetting('header');?><!--<div class="header-top">--><!--    <div class="w1000">--><!--        --><?php////        if(Yii::app()->controller->id == 'site' && Yii::app()->controller->action->id//            == 'index') {//        ?><!--       <h1 class="txt-left">--><!--            Sửa mũi hàn quốc - Sài Gòn Halo - Bác sĩ thẩm mỹ hàng đầu Sài Gòn--><!--       </h1>--><!--        --><?php //} else { ?><!--            <p class="txt-left">--><!--                Sửa mũi hàn quốc - Sài Gòn Halo - Bác sĩ thẩm mỹ hàng đầu Sài Gòn--><!--            </p>--><!--        --><?php //} ?><!--        <div class="txt-right">--><!--            <ul>--><!--                <li>--><!--                    <span>--><!--                        HOTLINE--><!--                    </span>--><!--                    <a href="tel:--><?php //echo $this->ttc->Phone ?><!--">--><!--                        --><?php //echo $this->ttc->Phone ?><!--                    </a>--><!--                </li>--><!--                <li>--><!--                    <a rel="nofollow" href="#Ta__js-tu-van" data-toggle="modal" class="regist btnkn2tv">Đăng kí tư vấn</a>--><!--                </li>--><!--            </ul>--><!--        </div>--><!--    </div>--><!--</div>--><?php //$this->renderPartial("//layouts/menu"); ?><?php //$this->renderPartial("//layouts/menumobile"); ?><header class="w100">    <div class="w1000">        <div class="left">            <div class="logo">                <img src="<?php echo $this->ttc->Logo ?>" width="350px">            </div>        </div>        <div class="right">            <div class="grp">                <strong>HOTLINE: </strong>  <span>097 384 1766 - 094 984 2378</span>            </div>        </div>    </div></header><section class="menu w100">    <div class="w1000">        <?php $this->renderPartial("//layouts/menu",array('ttc'=>$ttc));?>    </div></section><section class="wrp-menumobile w100">    <div class="w1000">        <?php $this->renderPartial("//layouts/menumobile",array('ttc'=>$ttc));?>    </div></section>