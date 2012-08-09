<?php

/**
 * This is the model class for table "cat_sitio".
 *
 * The followings are the available columns in table 'cat_sitio':
 * @property integer $id_sitio
 * @property string $descripcion
 * @property string $edificio
 *
 * The followings are the available model relations:
 * @property Resguardante[] $resguardantes
 * @property Movimientos[] $movimientoses
 * @property Inventarios[] $inventarioses
 * @property Usuario[] $usuarios
 * @property BienMuebles[] $bienMuebles
 */
class CatSitio extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return CatSitio the static model class
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
		return 'cat_sitio';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('descripcion, edificio', 'required'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_sitio, descripcion, edificio', 'safe', 'on'=>'search'),
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
			'resguardantes' => array(self::HAS_MANY, 'Resguardante', 'id_sitio'),
			'movimientoses' => array(self::HAS_MANY, 'Movimientos', 'is_sitio'),
			'inventarioses' => array(self::HAS_MANY, 'Inventarios', 'is_sitio'),
			'usuarios' => array(self::HAS_MANY, 'Usuario', 'id_sitio'),
			'bienMuebles' => array(self::HAS_MANY, 'BienMuebles', 'is_sitio_actual'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_sitio' => 'Id Sitio',
			'descripcion' => 'Descripcion',
			'edificio' => 'Edificio',
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

		$criteria->compare('id_sitio',$this->id_sitio);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('edificio',$this->edificio,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}