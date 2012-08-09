<?php
/* @var $this CatSitioController */
/* @var $model CatSitio */

$this->breadcrumbs=array(
	'Cat Sitios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List CatSitio', 'url'=>array('index')),
	array('label'=>'Manage CatSitio', 'url'=>array('admin')),
);
?>

<h1>Create CatSitio</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>