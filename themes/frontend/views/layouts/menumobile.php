<script type="text/javascript" src="/js/menumobile/jquery.mmenu.min.all.js"></script>
<link rel="stylesheet" type="text/css" href="/css/menumobile/jquery.mmenu.all.css">
<link rel="stylesheet" type="text/css" href="/css/menumobile/demo.css">
<div class="header">
	<a class="menu_m" href="#menu"><span></span>Menu</a>
	<div class="" >
		<form method="post" action="">
			
			<gcse:search></gcse:search>
			
		</form>
		 <?php //Common::sendphone("#sbphone","#txtphone"); ?>
	</div>
</div>
<nav id="menu">
	<ul>
	<li ><a class="active" href='/'> Trang chủ</a></li>
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

                  ?>
                  <?php
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
  
       } ?>
    <li ><a class="active" href='/lien-he.html'> Liên hệ</a></li>
</nav>

<script type="text/javascript">
	$(function() {
		$('nav#menu').mmenu({
			extensions	: [ 'effect-slide-menu', 'pageshadow' ],
			searchfield	: false,
			counters	: false,
			navbar 		: {
				title		: '<a href=".">Điêu khắc trần sâm</a>'
			},
			navbars		: [
				/*{
					position	: 'top',
					content		: [ 'searchfield' ]
				}, */{
					position	: 'top',
					content		: [
						'prev',
						'title',
						'close'
					]
				}, {
					position	: 'bottom',
					content		: [
						''
					]
				}
			]
		});
	});
</script>
		<script>
	$(function(){
		$(window).scroll(function(){
			if($(this).scrollTop()>250){
				$(".header").addClass("fix-scroll");
			}
			else{
				$(".header").removeClass("fix-scroll");
			}
		});
	});	
</script>
<style type="text/css">
	.fix-scroll{position: fixed; top: 0px; z-index: 9;    margin: auto;left: 0;right: 0}
</style>