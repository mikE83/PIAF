<?php
/* @var $this CatNivelUsuarioController */
/* @var $model CatNivelUsuario */

$this->breadcrumbs=array(
	'Cat Nivel Usuarios'=>array('index'),
	$model->id_nivel_usuario,
);

$this->menu=array(
	array('label'=>'List CatNivelUsuario', 'url'=>array('index')),
	array('label'=>'Create CatNivelUsuario', 'url'=>array('create')),
	array('label'=>'Update CatNivelUsuario', 'url'=>array('update', 'id'=>$model->id_nivel_usuario)),
	array('label'=>'Delete CatNivelUsuario', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_nivel_usuario),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatNivelUsuario', 'url'=>array('admin')),
);
?>

<h1>View CatNivelUsuario #<?php echo $model->id_nivel_usuario; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_nivel_usuario',
		'descrp',
	),
)); ?>
