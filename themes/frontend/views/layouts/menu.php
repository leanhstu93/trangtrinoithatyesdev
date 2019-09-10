
   <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/menu/styles.css">

   <script src="<?php echo Yii::app()->request->baseUrl ?>/js/menu/script.js"></script>

<div id='cssmenu' class="w100">
<ul>
   <!--<li><a class="active home" href='#'></a></li>-->
   <li ><a class="active" href='/'>
           Trang chủ
       </a>
   </li>
    <?php $criteria = new CDbCriteria();
    $criteria->condition = "active = 1 and set_menu = 1";
    $criteria->limit = 3;
    $criteria->order = 'id DESC';
    $model = SinglePage::model()->findAll($criteria);
    $count = SinglePage::model()->count($criteria);
    if ($count > 0) {
        foreach ($model as $key => $value) {
            $router = Router::model()->find("idObject = " . $value->id . " AND type = " . Router::TYPE_SINGLE_PAGE); ?>
            <li class="hd-dropdown-hover"><a
                        href='/<?php echo $router->alias ?>.html'> <?php echo $value->name ?> </a>
            </li>                <?php }
    } ?>
    <li class="dropdown-submenu has-sub">
        <a href="javasctipt:;">
            Sản phẩm
        </a>
        <ul>
            <?php

            $criteria = new CDbCriteria();

            $criteria->with = "loaisanpham_lang";

            $criteria->condition ="Active = 1 and Parent = 0 and idNgonNgu = $this->lang" ;

            $criteria->order = "t.Order";

            $model = Loaisanpham::model()->findAll($criteria);

            $count = Loaisanpham::model()->count($criteria);

            foreach ($model as $key => $value) {
                Common::menudacap4($value->id,"Loaisanpham",$this->lang);
            }

            ?>
        </ul>
    </li>
      <?php 
       $criteria = new CDbCriteria();
       $criteria->with = "loaitin_lang";
       $criteria->condition ="Active = 1 and Parent = 0 and idNgonNgu = $this->lang" ;
       $criteria->order = "t.Order";
       $model = Loaitin::model()->findAll($criteria);
       $count = Loaitin::model()->count($criteria);
      ?>
      <?php 
       foreach ($model as $key => $value) {
       Common::menutintuc($value->id,"Loaitin",$this->lang);
  
       }
      
     ?>
    <li ><a class="active" href='/lien-he.html'> Liên hệ</a></li>
    <li class="txt-hotline">
       HOTLINE: 079 679 1968
    </li>
</ul>
</div>
<script type="text/javascript">
   $(function(){
      $(".key").focus(function(e){
        $(this).keydown(function(e){
          if(e.which == 13){
            key = $(this).parent().find(".key").val();
            window.location.href="tim-kiem.html?keyword="+key+"";
          }
        })
      });
      $(".btn_timkiem").click(function(){
        key = $(".key").val();
        window.location.href="tim-kiem.html?keyword="+key+"";
      });
   })
 </script>
<script>
  $(function(){
    $(window).scroll(function(){
      if($(this).scrollTop()>250){
        $("section.menu").addClass("fix-scroll");
      }
      else{
        $("section.menu").removeClass("fix-scroll");
      }
    });
  }); 
</script>