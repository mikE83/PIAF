<?php

/**
 * This is the model class for table "usuario".
 *
 * The followings are the available columns in table 'usuario':
 * @property integer $id
 * @property integer $id_status_usuario
 * @property integer $id_nivel_usuario
 * @property string $nombre
 * @property string $apaterno
 * @property string $amaterno
 * @property string $login
 * @property string $password
 * @property string $mail
 * @property integer $id_sitio
 * @property string $salt
 *
 * The followings are the available model relations:
 * @property UsuarioSesion[] $usuarioSesions
 * @property InventarioValidacion[] $inventarioValidacions
 * @property BienMuebleBaja[] $bienMuebleBajas
 * @property ObservacionBienMuebles[] $observacionBienMuebles
 * @property Movimientos[] $movimientoses
 * @property Inventarios[] $inventarioses
 * @property Resguardos[] $resguardoses
 * @property CatSitio $idSitio
 * @property CatStatusUsuario $idStatusUsuario
 * @property CatNivelUsuario $idNivelUsuario
 * @property BienMuebles[] $bienMuebles
 */
class Usuario extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Usuario the static model class
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
		return 'usuario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_status_usuario, id_nivel_usuario, nombre, apaterno, amaterno, login, password, mail, id_sitio', 'required'),
			array('id_status_usuario, id_nivel_usuario, id_sitio', 'numerical', 'integerOnly'=>true),
			array('salt', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, id_status_usuario, id_nivel_usuario, nombre, apaterno, amaterno, login, salt, password, mail, id_sitio', 'safe', 'on'=>'search'),
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
			'usuarioSesions' => array(self::HAS_MANY, 'UsuarioSesion', 'id'),
			'inventarioValidacions' => array(self::HAS_MANY, 'InventarioValidacion', 'id'),
			'bienMuebleBajas' => array(self::HAS_MANY, 'BienMuebleBaja', 'usuario_id'),
			'observacionBienMuebles' => array(self::HAS_MANY, 'ObservacionBienMuebles', 'id'),
			'movimientoses' => array(self::HAS_MANY, 'Movimientos', 'id'),
			'inventarioses' => array(self::HAS_MANY, 'Inventarios', 'id'),
			'resguardoses' => array(self::HAS_MANY, 'Resguardos', 'id'),
			'idSitio' => array(self::BELONGS_TO, 'CatSitio', 'id_sitio'),
			'idStatusUsuario' => array(self::BELONGS_TO, 'CatStatusUsuario', 'id_status_usuario'),
			'idNivelUsuario' => array(self::BELONGS_TO, 'CatNivelUsuario', 'id_nivel_usuario'),
			'bienMuebles' => array(self::HAS_MANY, 'BienMuebles', 'id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'id_status_usuario' => 'Id Status Usuario',
			'id_nivel_usuario' => 'Id Nivel Usuario',
			'nombre' => 'Nombre',
			'apaterno' => 'Apaterno',
			'amaterno' => 'Amaterno',
			'salt' => 'Salt',
			'login' => 'Login',
			'password' => 'Password',
			'mail' => 'Mail',
			'id_sitio' => 'Id Sitio',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('id_status_usuario',$this->id_status_usuario);
		$criteria->compare('id_nivel_usuario',$this->id_nivel_usuario);
		$criteria->compare('nombre',$this->nombre,true);
		$criteria->compare('apaterno',$this->apaterno,true);
		$criteria->compare('amaterno',$this->amaterno,true);
		$criteria->compare('login',$this->login,true);
		$criteria->compare('salt',$this->salt,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('mail',$this->mail,true);
		$criteria->compare('id_sitio',$this->id_sitio);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

// hash password
public function hashPassword($password, $salt)
{
    return md5($salt.$password);
}
        
// password validation
public function validatePassword($password)
{
    return $this->hashPassword($password,$this->salt)===$this->password;
}
        
//generate salt
public function generateSalt()
{
    return uniqid('',true);
}
        
public function beforeValidate()
{
    $this->salt = $this->generateSalt();
    return parent::beforeValidate();
}
        
public function beforeSave()
{
    $this->password = $this->hashPassword($this->password, $this->salt);
    return parent::beforeSave();
}





}