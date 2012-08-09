<?php
/* @var $this CatSitioController */
/* @var $model CatSitio */

$this->breadcrumbs=array(
	'Cat Sitios'=>array('index'),
	$model->id_sitio,
);

$this->menu=array(
	array('label'=>'List CatSitio', 'url'=>array('index')),
	array('label'=>'Create CatSitio', 'url'=>array('create')),
	array('label'=>'Update CatSitio', 'url'=>array('update', 'id'=>$model->id_sitio)),
	array('label'=>'Delete CatSitio', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_sitio),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CatSitio', 'url'=>array('admin')),
);
?>

<h1>View CatSitio #<?php echo $model->id_sitio; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_sitio',
		'descripcion',
		'edificio',
	),
)); ?>
