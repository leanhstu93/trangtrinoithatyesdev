<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=<?php echo $this->ch->Appid ?>';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>

<!-- Đặt thẻ này vào phần đầu hoặc ngay trước thẻ đóng phần nội dung của bạn. -->

<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'en-GB'}
</script>
<div class="w1000">

<div class="page-detail w100">

     <div class="left page-left">

     	<?php

          $arrBread[0]["Name"] = $model->tintuc_lang->Name;

            $criteria = new CDbCriteria();

            $criteria->with = "loaitin_lang";

            $criteria->condition = "idNgonNgu = $this->lang and Active = 1";

            $criteria->order = "t.id desc";

            $criteria->addInCondition("idLoaiTin",$this->arridloai);

            $arrloai = Loaitin::model()->findAll($criteria);

          

            $j = 0;

        for ($i= (count($arrloai)-1); $i >= 0; $i--) { 

            $j++;

            $arrBread[$j]["Name"] = $arrloai[$i]->loaitin_lang->Name;

            $arrBread[$j]["Href"] = "/loai-tin/".$arrloai[$i]->loaitin_lang->Alias.".html";

        }

        $this->renderPartial("//layouts/breadcrumb",array('data'=>$arrBread));

        ?> 

           <div class="post-content w100">

                <!-- title -->

                <h3 class="tt-bv w100"><?php echo $model->tintuc_lang->Name ?></h3>

                <!-- title -->

                <div class="wrp-time">

                    <i class="fa fa-calendar" aria-hidden="true"></i><span><?php echo date("H:m:s d/m/Y",$model->Date); ?></span>

                </div>

                <div class="wrp-share-gg">

                  <div class="g-plus" data-action="share" data-height="22"></div>

                </div>

                <div class="wrp-share">

                <div class="fb-like" data-href="http://<?php echo $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'] ?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

               

                </div>

                 

                <!-- Post meta -->

                <p class="w100 mtbv "> <?php echo $model->tintuc_lang->Description ?></p>

                

                <div class="ndbv w100">

                    <?php echo $model->tintuc_lang->Content ?>

                </div>

                 <div class="wrp-share-gg2">

                  <div class="g-plus" data-action="share" data-height="20"></div>

                </div>

                  <div class="wrp-share2">

                    <div class="fb-like" data-href="http://<?php echo $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'] ?>" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

                  </div>

             

            </div>



           

            <div class="wrp-comment w100">

              <?php $this->renderPartial("//layouts/comment"); ?>

            </div>

            

            <div class="wrp-post-rale w100">

              <div class="tt-tlq w100"> Tin liên quan </div>

              <ul>

                <?php

                $tlq = Common::postRelated($model->id,$model->idLoaiTin,$this->lang);

                if(isset($tlq))

                  foreach ($tlq as $key => $value) {# code...

                ?>

                <li>

                  <a href="/tin-tuc/<?php echo $value->tintuc_lang->Alias ?>.html">

                    <div class="wrp-img">

                      <img src="<?php echo $value->UrlImage ?>" alt="<?php echo $value->tintuc_lang->Name ?>" class="w100">

                    </div>

                    <label>

                      <?php echo $value->tintuc_lang->Name ?>

                    </label>

                  </a>

                </li>

                <?php } ?>

              </ul>

            </div>

     </div>

     <?php $this->renderPartial("//layouts/right"); ?>

</div>

</div>