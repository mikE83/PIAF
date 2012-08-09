<?php
/* @var $this CatSitioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Cat Sitios',
);

$this->menu=array(
	array('label'=>'Create CatSitio', 'url'=>array('create')),
	array('label'=>'Manage CatSitio', 'url'=>array('admin')),
);
?>

<?php if(Yii::app()->user->hasFlash('success')):?>
<div class="flash-notice">
<?php echo Yii::app()->user->getFlash('success')?>
</div>
<?php endif?>
<?php if(Yii::app()->user->hasFlash('error')):?>
<div class="flash-error">
<?php echo Yii::app()->user->getFlash('error')?>
</div>
<?php endif?>


<h1>Cat Sitios</h1>	

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
