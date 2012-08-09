<?php
/* @var $this CatNivelUsuarioController */
/* @var $model CatNivelUsuario */

$this->breadcrumbs=array(
	'Cat Nivel Usuarios'=>array('index'),
	$model->id_nivel_usuario=>array('view','id'=>$model->id_nivel_usuario),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatNivelUsuario', 'url'=>array('index')),
	array('label'=>'Create CatNivelUsuario', 'url'=>array('create')),
	array('label'=>'View CatNivelUsuario', 'url'=>array('view', 'id'=>$model->id_nivel_usuario)),
	array('label'=>'Manage CatNivelUsuario', 'url'=>array('admin')),
);
?>

<h1>Update CatNivelUsuario <?php echo $model->id_nivel_usuario; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>