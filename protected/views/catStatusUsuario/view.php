<?php
/* @var $this CatStatusUsuarioController */
/* @var $model CatStatusUsuario */

$this->breadcrumbs=array(
	'Cat Status Usuarios'=>array('index'),
	$model->id_status_usuario,
);

$this->menu=array(
	array('label'=>'List CatStatusUsuario', 'url'=>array('index')),
	array('label'=>'Create CatStatusUsuario', 'url'=>array('create')),
	array('label'=>'Update CatStatusUsuario', 'url'=>array('update', 'id'=>$model->id_status_usuario)),
	array('label'=>'Delete CatStatusUsuario', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_status_usuario),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatStatusUsuario', 'url'=>array('admin')),
);
?>

<h1>View CatStatusUsuario #<?php echo $model->id_status_usuario; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_status_usuario',
		'descrp',
	),
)); ?>
