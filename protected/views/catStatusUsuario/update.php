<?php
/* @var $this CatStatusUsuarioController */
/* @var $model CatStatusUsuario */

$this->breadcrumbs=array(
	'Cat Status Usuarios'=>array('index'),
	$model->id_status_usuario=>array('view','id'=>$model->id_status_usuario),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatStatusUsuario', 'url'=>array('index')),
	array('label'=>'Create CatStatusUsuario', 'url'=>array('create')),
	array('label'=>'View CatStatusUsuario', 'url'=>array('view', 'id'=>$model->id_status_usuario)),
	array('label'=>'Manage CatStatusUsuario', 'url'=>array('admin')),
);
?>

<h1>Update CatStatusUsuario <?php echo $model->id_status_usuario; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>