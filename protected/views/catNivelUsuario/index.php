<?php
/* @var $this CatNivelUsuarioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Cat Nivel Usuarios',
);

$this->menu=array(
	array('label'=>'Create CatNivelUsuario', 'url'=>array('create')),
	array('label'=>'Manage CatNivelUsuario', 'url'=>array('admin')),
);
?>

<h1>Cat Nivel Usuarios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
