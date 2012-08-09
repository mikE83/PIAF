<?php
/* @var $this CatSitioController */
/* @var $model CatSitio */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_sitio')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_sitio), array('view', 'id'=>$data->id_sitio)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('edificio')); ?>:</b>
	<?php echo CHtml::encode($data->edificio); ?>
	<br />


</div>