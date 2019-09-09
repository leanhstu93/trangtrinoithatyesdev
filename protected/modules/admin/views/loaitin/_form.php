<?php
 $form=$this->beginWidget('CActiveForm', array(
    'id'=>'user-form',
    // Please note: When you enable ajax validation, make sure the corresponding
    // controller action is handling ajax validation correctly.
    // There is a call to performAjaxValidation() commented in generated controller code.
    // See class documentation of CActiveForm for details on this.
    'enableAjaxValidation'=>false,
    'htmlOptions'=>array(
        'class'=>'form-horizontal',
    ),
)); ?>

<div class="form-group" style="margin-bottom:0px">
    <label class="col-sm-2 control-label form-label" for="input001">Loại cha:</label>
    <div class="col-sm-6">
        <select name='Loaitin[Parent]' id="LoaiTin">
        <option value="0"> Gốc </option>
            <?php 
   $criteria=new CDbCriteria();
        $criteria->with=array("loaitin_lang");
       $data = Loaitin::model()->findAll($criteria);
echo Common::dequyOptions1($data,0,"--",$parent,$id);  ?>
        </select>
        <span class="help-block" id="helpBlock"><?php echo $form->error($model,'id'); ?></span> </div>
</div>

<div class="form-group" style="margin-bottom:0px">
    <?php echo $form->labelEx($model, 'SetMenu', array('class' => 'col-sm-2 control-label form-label')); ?>
    <div class="col-sm-6">
        <?php echo $form->dropDownList($model, 'SetMenu',array("Không","Có"), array( 'class' => 'form-control ')); ?>
        <span class="help-block" id="helpBlock"><?php echo $form->error($model, 'SetMenu'); ?></span>
    </div>
</div>




 <div class="tt_tv">
	<div class="form-group" style="margin-bottom:0px">
	    <label class="col-sm-2 control-label form-label" for="input001">Tên loại:</label>
	    <div class="col-sm-6">
	        <?php echo $form->textField($lt,'Name',array('required'=>'required','size'=>60,'maxlength'=>100,'class'=>'form-control Ta__js-title')); ?>
	        <span class="help-block" id="helpBlock"><?php echo $form->error($lt,'Name',array("text"=>"aaa")); ?></span>
        </div>
	</div>

     <div class="form-group" style="margin-bottom:0px">
        <label class="col-sm-2 control-label form-label" for="input001">Đường dẫn:</label>
        <div class="col-sm-6">
            <?php echo $form->textField($lt,'Alias',array('size'=>60,'maxlength'=>100,'class'=>'form-control Ta__js-alias', 'required'=>'required')); ?>
            <span class="help-block" id="helpBlock"><?php echo $form->error($lt,'Alias',array("text"=>"aaa")); ?></span>
        </div>
        <div class="col-sm-4">
            <div class="checkbox checkbox-primary">
                <input id="checkbox102" class="Ta__js-toggle-auto-get-alias" type="checkbox" checked=""> 
                <label for="checkbox102">
                    Lấy đường dẫn tự động
                </label>
            </div>
        </div>
    </div>

     <div class="form-group" style="margin-bottom:0px">
         <label class="col-sm-2 control-label form-label" for="input001">Mô tả:</label>
         <div class="col-sm-6">
             <?php echo $form->textArea($lt,'desc',array('required'=>'required','class'=>'form-control','id'=>'desc')); ?>
             <span class="help-block" id="helpBlock"><?php echo $form->error($lt,'desc',array("text"=>"aaa")); ?></span>
         </div>
     </div>

    <div class="form-group" style="margin-bottom:0px">
        <label class="col-sm-2 control-label form-label" for="input001">Thứ tự :</label>
        <div class="col-sm-6">
            <?php echo $form->textField($model,'Order',array('required'=>'required','size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
            <span class="help-block" id="helpBlock"><?php echo $form->error($model,'Order',array("text"=>"aaa")); ?></span> </div>
    </div>
    <!-- -->
</div>
 <div class="tt_ta" style="display:none">
	<div class="form-group" style="margin-bottom:0px">
	    <label class="col-sm-2 control-label form-label" for="input001">Tên loại:</label>
	    <div class="col-sm-6">
	        <?php echo $form->textField($lt_,'Name',array('name'=>'LoaitinLang_[Name]','size'=>60,'maxlength'=>100,'class'=>'form-control')); ?>
	        <span class="help-block" id="helpBlock"><?php echo $form->error($lt,'Name',array("text"=>"aaa")); ?></span> </div>
	</div>
</div>
<!-- tab -->

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Thêm loại tin' : 'Lưu loại tin'); ?>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        var lt = $("#LoaiTin").val();
        if(lt != 0)
        {
            $(".setmenu").hide();
        }
        $("#LoaiTin").change(function(){
            var lt = $("#LoaiTin").val();
            if(lt != 0)
            {
                $(".setmenu").hide();
            }
        });
    })
</script>
<style type="text/css">
    .tabngonngu{
        width: 100%;
        margin-bottom: 22px;
        border-bottom: 1px solid #ccc;
        margin-left: -2%;
        display: block;
        float: left;
    }
    .tabngonngu a.active{
        font-weight: bold;
        color: black;
        background: -webkit-linear-gradient(top,#f3f3f3,#fff);
        background: -moz-linear-gradient(top,#f3f3f3,#fff);
        border-color: #ccc #ccc #fff;
        border-radius: 5px 5px 0 0;
        border-style: solid;
        border-width: 1px;
        -moz-border-bottom-colors: none;
        -moz-border-image: none;
        -moz-border-left-colors: none;
        -moz-border-right-colors: none;
        -moz-border-top-colors: none;
        box-shadow: none;

    }
    
    .tabngonngu a:hover{
        background: white;
    }
    .tabngonngu a{
        top: 2px;
        width: 137px;
        float: left;
        display: block;
        margin-left: 5px;
        position: relative;
        /* top: 18px; */
        padding: 14px 30px;
        line-height: 0.7em;
        min-width: 55px;
        text-align: center;
        color: #CAC8C8;
        font-size: 10px;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 1px;
        cursor: pointer;
        text-shadow: 1px 1px 1px rgba(255,255,255,0.3);
        background: -webkit-linear-gradient(top,#f3f3f3,#fff);
        background: -moz-linear-gradient(top,#f3f3f3,#fff);
        border-radius: 5px 5px 0 0;
        box-shadow: 2px 0px 2px rgba(0,0,0,0.1),-2px 0 2px rgba(0,0,0,0.1)/*0.1*/;
    }
    .tt_ta{display: none;}
</style>
<script type="text/javascript">
$(function(){
    $(".tabngonngu a:first").click(function(){
        $(".tabngonngu a:last").removeClass("active");
        $(this).addClass("active");
        $(".tt_tv").show();
        $(".tt_ta").hide();
        return false;
    })
    $(".tabngonngu a:last").click(function(){
        $(".tabngonngu a:first").removeClass("active");
        $(this).addClass("active");
        $(".tt_tv").hide();
        $(".tt_ta").show();
        return false;
    })
})
</script>
<?php $this->endWidget(); ?>
