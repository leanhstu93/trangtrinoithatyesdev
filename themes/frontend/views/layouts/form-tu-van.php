<?php
$model=new Baogia;
$form=$this->beginWidget('CActiveForm', array(
    'id'=>'checkout',
    // Please note: When you enable ajax validation, make sure the corresponding

    // controller action is handling ajax validation correctly.

    // There is a call to performAjaxValidation() commented in generated controller code.

    // See class documentation of CActiveForm for details on this.
    'enableAjaxValidation'=>false,
    'action' => '/site/Xulybaogia',
    'htmlOptions'=>array(
        'class'=>'form-horizontal',
    ),
)); ?>
<div class="wrp-form-tu-van">
    <div class="modal-header">
        <h3>ĐẶT HÀNG </h3>
    </div>
    <div class="modal-body">
        <div class="row-fluid">
            <div class="span12">
                <?php echo $form->errorSummary($model); ?>
                <div class="form-group">
                    <?php echo $form->textField($model,'Name',array("placeholder"=>"Họ tên:", 'class' => 'form-control')); ?>
                </div>
                <div class="form-group">
                    <input placeholder="Điện thoại:*" class="form-control" required="required" name="Baogia[Phone]" id="Baogia_Phone" pattern="^\+?\d{0,13}" type="text" maxlength="12">
                </div>
                <div class="form-group">
                    <?php echo $form->emailField($model,'Email',array("placeholder"=>"Email:", 'class' => 'form-control' )); ?>
                </div>
                <div class="form-group">
                    <?php echo $form->textArea($model,'Description',array("placeholder"=>"Mô tả:","rows"=>3, 'class' => 'form-control')); ?>
                    <?php echo $form->error($model,'Description'); ?>
                </div>

            </div>
        </div>
    </div>
    <div class="modal-footer">
        <?php echo CHtml::submitButton("Đăng ký",array("name"=>"Gui")); ?>
        <p class="w100">Tư vấn trực tiếp 24/7: <a href="tel:<?php echo $this->ttc->Phone ?>"><?php echo $this->ttc->Phone ?></a></p>
    </div>
</div>
<?php $this->endWidget(); ?>