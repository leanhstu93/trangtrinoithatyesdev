<!-- Start Page Header -->

<div class="page-header">
    <h1 class="title">Danh sách đăng ký tư vấn</h1>
    <ol class="breadcrumb">
        <li><a href="/admin">Home</a></li>
        <li class="active"><a href="<?php echo Yii::app()->homeUrl ?>admin/quan-ly-dat-ve.html">Danh sách đăng ký tư vấn</a></li>
    </ol>
</div>
<!-- End Page Header -->

<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->

<div class="container-widget">

    <!-- Start Fourth Row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default ad-qllt">
                <div class="panel-title">
                    <h1>Danh sách đăng ký tư vấn</h1>
                    <ul class="panel-tools">
                        <li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>
                    </ul>
                  
                </div>
                <div class="panel-body table-responsive">
                    <div id="example0_wrapper" class="dataTables_wrapper">

                        <?php
                        $this->widget('zii.widgets.grid.CGridView', array(
                            'id' => 'post-grid',
                            'dataProvider' => $model->search(),
                            'filter' => $model,
                            'columns' => array(
                                array(
                                    'header' => 'STT',
                                    'value' => '$this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize + ($row+1)',
                                ),
                                 array('name' => 'Name', 
                                    ),
                                array('name' => 'Email',),
                                array('name' =>'Phone' ),
                                array('name' =>'Description' ),
                                array('name' =>'Date',
                                        'type'=>'raw',
                                        'value' =>'date("H:m:s d/m/Y",$data->Date)',
                                 ),
                                array(
                                    'class' => 'CButtonColumn',
                                    'template' => '{delete}',
                                    'buttons' => array(
                                        'update' => array(
                                            'label' => '',
                                            'imageUrl' => '',
                                            'options' => array('class' => 'fa fa-edit'),
                                       
                                        ),
                                        'delete' => array(
                                            'label' => '',
                                            'imageUrl' => '',
                                         
                                            'options' => array('class' => 'fa fa-trash-o'),
                                            'click' => 'function() {
                                                    var url = jQuery(this).attr("href");
                                                    swal({
                                                        title: "Bạn có chắc muốn xóa?",
                                                        text: "Bạn sẽ không thể khôi phục tập tin này!",
                                                        type: "warning",
                                                        showCancelButton: true,
                                                        confirmButtonColor: "#DD6B55",
                                                        confirmButtonText: "Vâng, tôi muốn xóa!",
                                                        closeOnConfirm: false
                                                    },
                                                    function(){
                                                            var th = this,
                                                            afterDelete = function(){};
                                                            jQuery("#post-grid").yiiGridView("update", {
                                                                type: "POST",
                                                                url: url,
                                                                success: function(data) {
                                                                    jQuery("#post-grid").yiiGridView("update");
                                                                    afterDelete(th, true, data);
                                                                    swal("Đã xóa!", "Thông tin đã bị xóa.", "success");
                                                                },
                                                                error: function(XHR) {
                                                                    swal("Xảy ra lỗi!", "Liên hệ admin để khắc phục.", "error");
                                                                    return afterDelete(th, false, XHR);
                                                                }
                                                            });
                                                            return false;
                                                    });
                                                    return false;
                                                }',
                                        ),
                                    ),
                                ),
                            ),
                        ));
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Fourth Row -->
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->