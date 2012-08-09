<?php
/* @var $this CatStatusUsuarioController */
/* @var $model CatStatusUsuario */

$this->breadcrumbs=array(
	'Cat Status Usuarios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatStatusUsuario', 'url'=>array('index')),
	array('label'=>'Manage CatStatusUsuario', 'url'=>array('admin')),
);
?>

<h1>Create CatStatusUsuario</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>