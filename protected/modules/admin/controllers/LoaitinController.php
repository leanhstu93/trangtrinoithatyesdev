<?php

class LoaitinController extends Controller
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
				'users'=>array(''),
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
		$model=new Loaitin;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Loaitin']))
		{
			$model->attributes=$_POST['Loaitin'];
			if($model->save())
			{
				
				$ltl = new LoaitinLang;
				$ltl->attributes=$_POST['LoaitinLang'];
				$ltl->idLoaiTin = $model->id;
				$ltl->idNgonNgu = 1;
				$ltl->Alias = Common::bodau($ltl->Name);
				if($ltl->save()) {
                    //xu ly node
                    $insert_id = Yii::app()->db->getLastInsertID();
                    Router::processRouter(['alias' => $ltl->Alias, 'idObject' => $insert_id, 'type' => Router::TYPE_NEWS_CATEGORY]);
                    //end xu ly node
                }
				$ltl = new LoaitinLang;
				$ltl->attributes=$_POST['LoaitinLang_'];
				$ltl->idLoaiTin = $model->id;
				$ltl->idNgonNgu = 2;

				if(empty($ltl->Alias)) {
					$ltl->Alias = Common::bodau($ltl->Name);
				}			
				
				if($ltl->save()) {
					//Xu ly node
                    $insert_id = Yii::app()->db->getLastInsertID();
			        $router = Router::model()->find("alias = '".$ltl->Alias."'");
		        	if(!empty($router)) {
						$ltl->Alias = $ltl->Alias."-".$ltl->id;
					}                   
                  
                    Router::processRouter(['alias' => $ltl->Alias, 'idObject' => $insert_id, 'type' => Router::TYPE_NEWS_CATEGORY]);
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
		 $lt= LoaitinLang::model()->find("idLoaiTin = $model->id and idNgonNgu = 1");
        $lt_=  LoaitinLang::model()->find("idLoaiTin = $model->id and idNgonNgu = 2");  
        $criteria = new CDbCriteria();
        $criteria->condition = "type = ".Router::TYPE_NEWS_CATEGORY." AND idObject = ".$lt->id;
        $router = Router::model()->find($criteria);	
        $lt->Alias = $router->alias;
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Loaitin']))
		{
			$model->attributes=$_POST['Loaitin'];
			if($model->save())
			{
			
				$ltl = LoaitinLang::model()->find("idNgonNgu = 1 and idLoaiTin = $model->id");
				$ltl->attributes=$_POST['LoaitinLang'];
				$ltl->idLoaiTin = $model->id;
				$ltl->idNgonNgu = 1;
				if(empty($ltl->Alias)) {
					$ltl->Alias = Common::bodau($ltl->Name);
				}
				$ltl->save();
				$routerCheck = Router::model()->find("alias = '".$ltl->Alias."' AND id != ".$router->id);
	        	if(!empty($routerCheck)) {
					$ltl->Alias = $ltl->Alias."-".$ltl->id;
				}

				$router->alias = $ltl->Alias;
				$router->save();

				$ltl = LoaitinLang::model()->find("idNgonNgu = 2 and idLoaiTin = $model->id");
				$ltl->attributes=$_POST['LoaitinLang_'];
				$ltl->idLoaiTin = $model->id;
				$ltl->idNgonNgu = 2;
				$ltl->Alias = Common::bodau($ltl->Name);
				$ltl->save();
				$this->redirect(array('admin'));
			}
		}

		$this->render('update',array(
			'model'=>$model,
			'lt'=>$lt,
			'lt_'=>$lt_,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{

		$count = Tintuc::model()->count("idLoaiTin = $id");
		if($count > 0)
			throw new CHttpException(404,'Không thể xóa loại tin tức này.');
		$count = Loaitin::model()->count("Parent = $id");
		if($count > 0)
			throw new CHttpException(404,'Không thể xóa loại tin tức này.');
		$this->loadModel($id)->delete();

        #xoa router
        $criteria = new CDbCriteria();
        $criteria->condition = "idLoaiTin = $id";
        $data = LoaitinLang::model()->findAll($criteria);
        foreach ($data as $item) {
            #xu ly router
            Router::processRouter(['alias' => '', 'idObject' => $item->id, 'type' => Router::TYPE_NEWS_CATEGORY], 'delete');
            #End xu ly router
        }
        #END xoa router

        $data = LoaitinLang::model()->deleteAll("`idLoaiTin` = :idl",array(":idl"=>$id));
        echo $id;
        Common::debug($data);
		
		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('Loaitin');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Loaitin('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Loaitin']))
			$model->attributes=$_GET['Loaitin'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Loaitin the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Loaitin::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Loaitin $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='loaitin-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
