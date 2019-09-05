<?php
  $ttc = Thongtinchung::model()->find(" idNgonNgu = $this->lang ");
  $ch = Cauhinh::model()->find("id = 1 ");
//  common::luuThongtin();
  $version = '1.0';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta property="fb:app_id" content="<?php  echo $ch->Appid;?>">
    <link href="<?php echo $ttc->Favicon ?>" rel="shortcut icon" type="image/x-icon" />
    <meta property="og:type" content="article" />

    <!--  end fb -->
    <title><?php echo $this->pageTitle ?></title>
    <!-- start nhung bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- icon -->
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/style.css">
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/css/font-awesome.min.css">
    <script src="<?php echo Yii::app()->request->baseUrl ?>/js/jquery.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl ?>/js/ta.js"></script>
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
    <?php // echo $content ?>
      <?php  $this->renderPartial("//layouts/footer"); ?>
    <?php # $this->renderPartial("//layouts/nav-right-fix"); ?>
    <?php // $this->renderPartial("//layouts/messengerFB"); ?>
      <?php # $this->renderPartial("//layouts/tu-van-mien-phi"); ?>
 </div>
</body>
</html>
