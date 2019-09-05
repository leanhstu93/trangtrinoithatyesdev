<?php
  $ttc = Thongtinchung::model()->find(" idNgonNgu = $this->lang ");
  $ch = Cauhinh::model()->find("id = 1 ");
  common::luuThongtin();
  $version = '1.0';
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="google-site-verification" content="thIN_-Eh2apP5tF5RbzPfhi9py5rRlzJ7yez8g2NP4g" />
   <!-- fb -->
   <meta property="fb:app_id" content="<?php  echo $ch->Appid;?>" />
   <link href="<?php echo $ttc->Favicon ?>" rel="shortcut icon" type="image/x-icon" />
    <meta property="og:type" content="article" />
    <script type="text/javascript">
        var appid = '<?php  echo $ch->Appid;?> ';
    </script>
  <!--  end fb -->
  <title><?php echo $this->pageTitle ?></title>
  <!-- start nhung bootstrap -->
  <!-- Latest compiled and minified CSS -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/font-awesome.min.css">
   <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/animate.css">
  <script src="<?php echo Yii::app()->request->baseUrl ?>/js/jquery.js"></script>
   <script src="<?php echo Yii::app()->request->baseUrl ?>/js/animatescroll.js"></script>
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/js/custom.js?v=1.1"></script>
    <link rel="stylesheet" type="text/css" href="/css/carousel/owl.carousel.css">
    <script type="text/javascript" src="/js/carousel/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/libs/fancybox/jquery.fancybox.js"></script>
    <link rel="stylesheet" type="text/css" href="/libs/fancybox/jquery.fancybox.css">
    <link rel="stylesheet" href="/libs/bootstrap-modal/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/libs/bootstrap-modal/bootstrap-modal.css">
    <link rel="stylesheet" type="text/css" href="/libs/bootstrap-modal/bootstrap-modal-bs3patch.css">
    <link rel="stylesheet" href="/libs/bootstrap-modal/bootstrap-responsive.css">
    <script type="text/javascript" src="/libs/bootstrap-modal/bootstrap-modal.js"></script>
    <script type="text/javascript" src="/libs/bootstrap-modal/bootstrap-modalmanager.js"></script>
    <script type="text/javascript" src="/js/bootstrap-rating.min.js"></script>
    <link href="/css/bootstrap-rating.css" rel="stylesheet">
    <script type="text/javascript">
     $(function(){$(".alert button").click(function(event) {/* Act on the event */ $(this).parent().hide("fast"); }); })
   </script>
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/style.css?v2">
    <?php echo $ch->head ?>
</head>
<body class="kns">
 <?php echo $ch->body ?>
 <?php
    foreach(Yii::app()->user->getFlashes() as $key => $message) {
        echo '<div class="alert alert-' . $key . '">' . $message . " <button>x</button> </div>\n";
    }
?>
  <div class="w1350">
      <?php $this->renderPartial("//layouts/header"); ?>
    <?php echo $content ?>
      <?php $this->renderPartial("//layouts/footer"); ?>
    <?php $this->renderPartial("//layouts/nav-right-fix"); ?>
    <?php // $this->renderPartial("//layouts/messengerFB"); ?>
      <?php $this->renderPartial("//layouts/tu-van-mien-phi"); ?>
 </div>
</body>
</html>
