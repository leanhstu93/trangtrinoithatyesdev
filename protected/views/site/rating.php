<?php
$rateAll = Rate::getRating($data->id,Rate::TYPE_NEWS_DETAIL);
$arv =round($rateAll->sum_point / $rateAll->count,1);

?>
<div class="wrp-rating-txt">
    Đánh giá:
</div>
<div class="wrp-rating not-checked">
    <input type="hidden"
           data-type="<?php echo Rate::TYPE_NEWS_DETAIL ?>"
           data-id="<?php echo $data->id  ?>"
           class="rating ta-js-rating"
           value="<?php echo $arv ?>"
           data-start="0"
           data-step="2"
           data-stop="10"
           data-filled="fa fa-star fa-2x"
           data-empty="fa fa-star-o fa-2x" disabled="disabled"/>
</div>
<div class="wrp-rating-txt wrp-rating-txt-desc ">
    <span class="ta-js-val-rating"><?php echo $arv ?></span>/10 (<span class="ta-js-count-rating"><?php echo $rateAll->count ?></span> phiếu bầu)
</div>