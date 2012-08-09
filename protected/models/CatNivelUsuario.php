<?php

/**
 * This is the model class for table "cat_nivel_usuario".
 *
 * The followings are the available columns in table 'cat_nivel_usuario':
 * @property integer $id_nivel_usuario
 * @property string $descrp
 *
 * The followings are the available model relations:
 * @property Usuario[] $usuarios
 */
class CatNivelUsuario extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return CatNivelUsuario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
	
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'cat_nivel_usuario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('descrp', 'required'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_nivel_usuario, descrp', 'safe', 'on'=>'search'),
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
			'usuarios' => array(self::HAS_MANY, 'Usuario', 'id_nivel_usuario'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_nivel_usuario' => 'Id Nivel Usuario',
			'descrp' => 'Descrp',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_nivel_usuario',$this->id_nivel_usuario);
		$criteria->compare('descrp',$this->descrp,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}