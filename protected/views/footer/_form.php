<?php
/* @var $this FooterController */
/* @var $model Footer */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'footer-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'col1'); ?>
		<?php echo $form->textField($model,'col1',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'col1'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'col2'); ?>
		<?php echo $form->textField($model,'col2',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'col2'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->