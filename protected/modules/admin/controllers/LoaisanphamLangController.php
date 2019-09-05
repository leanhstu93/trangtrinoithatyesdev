<?php

class LoaisanphamLangController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model = new Loaisanpham;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		if(isset($_POST['LoaisanphamLang']))
		{
			$model->attributes = $_POST['Loaisanpham'];
			if($model->save())
			{
				$lsp = new LoaisanphamLang;
				$lsp->attributes = $_POST['LoaisanphamLang'];
				$lsp->idLoai = $model->id;
				$lsp->idNgonNgu = 1;
				if(empty($lsp->Alias)) {
					$lsp->Alias =  Common::bodau($lsp->Name);
				}				
				
				if($lsp->save()) {
					//Xu ly node
                    $insert_id = Yii::app()->db->getLastInsertID();
			        $router = Router::model()->find("alias = '".$lsp->Alias."'");
		        	if(!empty($router)) {
						$lsp->Alias = $lsp->Alias."-".$insert_id;
					}                   

                    Router::processRouter(['alias' => $lsp->Alias, 'idObject' => $insert_id, 'type' => Router::TYPE_PRODUCT_CATEGORY]);
                    //end xu ly node
                }
				$this->redirect(array('admin'));
			}
		}
		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=Loaisanpham::model()->find("id = $id");
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
		 $lsp= LoaisanphamLang::model()->find("idLoai = $model->id and idNgonNgu = 1");
        $lsp_=  LoaisanphamLang::model()->find("idLoai = $model->id and idNgonNgu = 2");  

    	$criteria = new CDbCriteria();
        $criteria->condition = "type = ".Router::TYPE_PRODUCT_CATEGORY." AND idObject = ".$lsp->id;
        $router = Router::model()->find($criteria);	
        $lsp->Alias = $router->alias;
		if(isset($_POST['Loaisanpham']))
		{
			$model->attributes=$_POST['Loaisanpham'];
			if($model->save())
			{
				$lsp = LoaisanphamLang::model()->find("idNgonNgu = 1 and idLoai = $id");
				$lsp->attributes = $_POST['LoaisanphamLang'];
				$lsp->idLoai = $model->id;
				$lsp->idNgonNgu = 1;
				if(empty($lsp->Alias)) {
					$lsp->Alias = Common::bodau($lsp->Name);
				}
				$lsp->save();
				$routerCheck = Router::model()->find("alias = '".$lsp->Alias."' AND id != ".$router->id);
	        	if(!empty($routerCheck)) {
					$lsp->Alias = $lsp->Alias."-".$lsp->id;
				}

				$router->alias = $lsp->Alias;
				$router->save();

				$this->redirect(array('admin'));
			}
		}

		$this->render('update',array(
			'model'=>$model,
			'lsp_' => $lsp_,
			'lsp' => $lsp,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$count = Sanpham::model()->count("idLoai = $id");
		if($count > 0)
			throw new CHttpException(404,'Không thể xóa loại sản phẩm này.');
		$count = Loaisanpham::model()->count("Parent = $id");
		if($count > 0)
			throw new CHttpException(404,'Không thể xóa loại sản phẩm này.');
		Loaisanpham::model()->find("id=$id")->delete();
        #xoa router
        $criteria = new CDbCriteria();
        $criteria->condition = "idLoai = $id";
        $lsp = LoaisanphamLang::model()->findAll($criteria);

        if($lsp != false) {
            foreach ($lsp as $value) {
                Router::processRouter(['alias' => '', 'idObject' => $value->id, 'type' => Router::TYPE_PRODUCT_CATEGORY], 'delete');
            }
        }
        #End xoa router
		LoaisanphamLang::model()->deleteAll("`idLoai` = :idl",array(":idl"=>$id));
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('LoaisanphamLang');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Loaisanpham('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['LoaisanphamLang']))
			$model->attributes=$_GET['LoaisanphamLang'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return LoaisanphamLang the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=LoaisanphamLang::model()->findByPk($id);

		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param LoaisanphamLang $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='loaisanpham-lang-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
