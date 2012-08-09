<?php
/* @var $this CatNivelUsuarioController */
/* @var $model CatNivelUsuario */

$this->breadcrumbs=array(
	'Cat Nivel Usuarios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatNivelUsuario', 'url'=>array('index')),
	array('label'=>'Manage CatNivelUsuario', 'url'=>array('admin')),
);
?>

<h1>Create CatNivelUsuario</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>