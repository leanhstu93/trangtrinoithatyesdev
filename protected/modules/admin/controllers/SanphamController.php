<?php

class SanphamController extends Controller
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
		$model=new Sanpham;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);


		if(isset($_POST['Sanpham']))
		{


			$model->attributes=$_POST['Sanpham'];
			if($model->save())
			{
				if(isset($_POST['Thumbnails']))
				{
					$cont_thum = count($_POST['Thumbnails']);
					if($cont_thum > 0)
					{
						for($i = 0; $i<$cont_thum;$i++)
						{
							$thum = new Thumbnails;
							$thum->idSP = $model->id;
							$thum->UrlImage= $_POST['Thumbnails'][$i];
							$thum->save();
						}
					}
				}
				$spl = new SanphamLang;
				$spl->idSP = $model->id;
				$spl->idNgonNgu = 1;
				$spl->attributes = $_POST['SanphamLang'];
				$spl->File = trim($spl->File, "/");				
				if(empty($spl->Alias)) {
					$spl->Alias = Common::bodau($spl->Name);
				}
                if($spl->save()) {
                	//Xu ly node
                    $insert_id = Yii::app()->db->getLastInsertID();
			        $router = Router::model()->find("alias = '".$spl->Alias."'");
		        	if(!empty($router)) {
						$spl->Alias = $spl->Alias."-".$spl->id;
					}
                    
                    Router::processRouter(['alias' => $spl->Alias, 'idObject' => $insert_id, 'type' =>Router::TYPE_PRODUCT]);
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
		$model=$this->loadModel($id);
		$spl = SanphamLang::model()->find("idNgonNgu = 1 and idSP = $model->id");

		$criteria = new CDbCriteria();
        $criteria->condition = "type = ".Router::TYPE_PRODUCT." AND idObject = ".$spl->id;
        $router = Router::model()->find($criteria);	
        $spl->Alias = $router->alias;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Sanpham']))
		{
			$model->attributes=$_POST['Sanpham'];

			if($model->save())
			{
				$thum = Thumbnails::model()->deleteAll("idSP = $id");
				if(isset($_POST['Thumbnails']))
				{
					$cont_thum = count($_POST['Thumbnails']);
					if($cont_thum > 0)
					{
						for($i = 0; $i<$cont_thum;$i++)
						{
							$thum = new Thumbnails;
							$thum->idSP = $model->id;
							$thum->UrlImage= $_POST['Thumbnails'][$i];
							$thum->save();
						}
					}
				}
				$spl = SanphamLang::model()->find("idSP = $id and idNgonNgu = 1");
				$spl->idSP = $model->id;
				$spl->idNgonNgu = 1;
				$spl->attributes = $_POST['SanphamLang'];
				$spl->File = trim($spl->File, "/");

				if(empty($spl->Alias)) {
					$spl->Alias = Common::bodau($spl->Name);
				}
				$spl->save();
				$routerCheck = Router::model()->find("type = ".Router::TYPE_PRODUCT." AND alias = '".$spl->Alias."' AND id != ".$router->id);
	        	if(!empty($routerCheck)) {
					$spl->Alias = $spl->Alias."-".$spl->id;
				}

				$router->alias = $spl->Alias;
				$router->save();
                // Router::processRouter(['alias' => Common::bodau($spl->Name), 'idObject' => $model->id, 'type' =>Router::TYPE_PRODUCT], 'update');
				$this->redirect(array('admin'));
			}
		}

		$this->render('update',array(
			'model'=>$model,
			'spl' => $spl
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();
        #xoa router
        $criteria = new CDbCriteria();
        $criteria->condition = "idSP = $id";
        $spl = SanphamLang::model()->findAll($criteria);

        if($spl != false) {
            foreach ($spl as $value) {
                Router::processRouter(['alias' => '', 'idObject' => $value->id, 'type' => Router::TYPE_PRODUCT], 'delete');
            }
        }
        #End xoa router

		SanphamLang::model()->deleteAll("idSP = $id");

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Sanpham');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Sanpham('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Sanpham']))
			$model->attributes=$_GET['Sanpham'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Sanpham the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Sanpham::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Sanpham $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='sanpham-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
