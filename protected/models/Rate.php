<?php

/**
 * This is the model class for table "rate".
 *
 * The followings are the available columns in table 'rate':
 * @property integer $id
 * @property integer $type
 * @property integer $point
 * @property string $ip
 * @property integer $id_object
 */
class Rate extends CActiveRecord
{
    const TYPE_NEWS_DETAIL=1;

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'rate';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type, point, ip, id_object', 'required'),
			array('type, point, id_object', 'numerical', 'integerOnly'=>true),
			array('ip', 'length', 'max'=>50),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, type, point, ip, id_object', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'type' => 'Type',
			'point' => 'Point',
			'ip' => 'Ip',
			'id_object' => 'Id Object',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('type',$this->type);
		$criteria->compare('point',$this->point);
		$criteria->compare('ip',$this->ip,true);
		$criteria->compare('id_object',$this->id_object);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Rate the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

    public static function getRating($id_object,$type){


        $criteria = new CDbCriteria();
        $criteria->select = 'SUM(point) as sum_point,COUNT(id) as count';
        $criteria->condition = "id_object = $id_object and type = $type";
        $sql = Yii::app()->db->commandBuilder->createFindCommand('rate', $criteria)->getText();

        //fetching data based on created SQL stored in $sql variable
        $rateAll = Yii::app()->db->createCommand($sql)->queryRow();

        return (object)$rateAll;
    }
}
