<?php
/* @var $this CatStatusUsuarioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Cat Status Usuarios',
);

$this->menu=array(
	array('label'=>'Create CatStatusUsuario', 'url'=>array('create')),
	array('label'=>'Manage CatStatusUsuario', 'url'=>array('admin')),
);
?>

<h1>Cat Status Usuarios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
