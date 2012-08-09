<?php
/* @var $this CatSitioController */
/* @var $model CatSitio */

$this->breadcrumbs=array(
	'Cat Sitios'=>array('index'),
	$model->id_sitio=>array('view','id'=>$model->id_sitio),
	'Update',
);

$this->menu=array(
	array('label'=>'List CatSitio', 'url'=>array('index')),
	array('label'=>'Create CatSitio', 'url'=>array('create')),
	array('label'=>'View CatSitio', 'url'=>array('view', 'id'=>$model->id_sitio)),
	array('label'=>'Manage CatSitio', 'url'=>array('admin')),
);
?>

<h1>Update CatSitio <?php echo $model->id_sitio; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>