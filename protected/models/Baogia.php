<?php

/**
 * This is the model class for table "baogia".
 *
 * The followings are the available columns in table 'baogia':
 * @property integer $id
 * @property string $Name
 * @property string $Phone
 * @property string $Email
 * @property integer $Date
 * @property string $Description
 * @property integer $Active
 */
class Baogia extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'baogia';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('Phone', 'required'),
			array('Date, Active', 'numerical', 'integerOnly'=>true),
			array('Name, Phone, Email', 'length', 'max'=>255),
			array('Description', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, Name, Phone, Email, Date, Description, Active', 'safe', 'on'=>'search'),
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
			'Name' => 'Name',
			'Phone' => 'Phone',
			'Email' => 'Email',
			'Date' => 'Date',
			'Description' => 'Description',
			'Active' => 'Active',
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
		$criteria->compare('Name',$this->Name,true);
		$criteria->compare('Phone',$this->Phone,true);
		$criteria->compare('Email',$this->Email,true);
		$criteria->compare('Date',$this->Date);
		$criteria->compare('Description',$this->Description,true);
		$criteria->compare('Active',$this->Active);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
			'sort'=> array('defaultOrder'=>'t.id desc')
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Baogia the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
