<?php

/**
 * This is the model class for table "user".
 *
 * The followings are the available columns in table 'user':
 * @property integer $id
 * @property string $username
 * @property string $password
 * @property string $email
 * @property integer $role
 * @property integer $status
 * @property string $url
 * @property string $reg_date
 * @property string $description
 * @property string $facebook_link
 * @property string $images
 * @property string $name
 */
class User extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, password, email, role, status, url, reg_date, images, name', 'required'),
			array('role, status', 'numerical', 'integerOnly'=>true),
			array('username', 'length', 'max'=>100),
			array('password', 'length', 'max'=>255),
			array('email', 'length', 'max'=>50),
			array('name', 'length', 'max'=>250),
			array('description, facebook_link', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, username, password, email, role, status, url, reg_date, description, facebook_link, images, name', 'safe', 'on'=>'search'),
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
			'username' => 'Username',
			'password' => 'Password',
			'email' => 'Email',
			'role' => 'Role',
			'status' => 'Status',
			'url' => 'Url',
			'reg_date' => 'Reg Date',
			'description' => 'Description',
			'facebook_link' => 'Facebook Link',
			'images' => 'Images',
			'name' => 'Name',
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
		$criteria->compare('username',$this->username,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('role',$this->role);
		$criteria->compare('status',$this->status);
		$criteria->compare('url',$this->url,true);
		$criteria->compare('reg_date',$this->reg_date,true);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('facebook_link',$this->facebook_link,true);
		$criteria->compare('images',$this->images,true);
		$criteria->compare('name',$this->name,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return User the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
