<!-- Start Page Header -->

<div class="page-header">
    <h1 class="title">Quản lý ban quản trị</h1>
    <ol class="breadcrumb">
        <li><a href="/admin">Home</a></li>
        <li class="active"><a href="/admin/quan-ly-bai-viet.html">Quản lý ban quản trị</a></li>
    </ol>
</div>
<!-- End Page Header -->

<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->

<div class="container-widget">

    <!-- Start Fourth Row -->
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default ad-qlqt">
                <div class="panel-title">
                    <h1>Quản lý ban quản trị</h1>
                    <ul class="panel-tools">
                        <li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>
                    </ul>
                    <a class="btn btn-default createCourse" href="<?php echo Yii::app()->request->baseUrl ?>/admin/them-ban-quan-tri.html">Thêm ban quản trị</a>
                </div>
                <div class="panel-body table-responsive">
                    <div id="example0_wrapper" class="dataTables_wrapper">

                        <?php
                        $model1 = new Role('search');
                        $this->widget('zii.widgets.grid.CGridView', array(
                            
                            'id' => 'post-grid',
                            'dataProvider' => $model->search(),
                            'filter' => $model,
                            'columns' => array(
                                array(
                                    'header' => 'STT',
                                    'value' => '$this->grid->dataProvider->pagination->currentPage * $this->grid->dataProvider->pagination->pageSize + ($row+1)',
                                ),
                                'TaiKhoan',
                                'HoTen',
                                //'Description',
                               
                               array(
                                   
                                    'header'=>'<a>Vai trò</a>',
                                    'value'=>'Common::getOneRecord("Role","rolename","id = ".$data->idRole)',
                                    'filter'=>CHtml::activeTextField(
                                        $model1,
                                        "rolename",
                                        CHtml::listData(Role::model()->findAll(), 'rolename', 'rolename'),
                                        array(
                                            'empty'=>'(Seleccione uno)',
                                        )),
                                ),
                                array(
                                    'name'=>'NgayDangKy',
                                    'value'=>'date("d/m/Y",$data->NgayDangKy)'
                                    ),
                                //'Published',
                                //'Nsfw',
                                //'TopScript',
                                //'BottomScript',
                                /*
                                  'EditorId',
                                  'Title',
                                  'Description',
                                  'Desc',
                                  'ImageUrl',
                                  'YoutubeId',
                                  'Start',
                                  'Stop',
                                  'Dimention',
                                  'CropArea',
                                  'IsImageChanged',
                                  'Width',
                                  'Height',
                                  'Source',
                                  'Script',
                                  'User_id',
                                 */
                                array(
                                    'class' => 'CButtonColumn',
                                    'template' => '{update}{delete}',
                                    'buttons' => array(
                                        'update' => array(
                                            'label' => '',
                                            'imageUrl' => '',
                                            'options' => array('class' => 'fa fa-edit'),
                                            'url' =>'Yii::app()->homeUrl."admin/sua-ban-quan-tri/".$data->id.".html"'
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