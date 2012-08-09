<?php
/* @var $this CatStatusUsuarioController */
/* @var $model CatStatusUsuario */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_status_usuario')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_status_usuario), array('view', 'id'=>$data->id_status_usuario)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descrp')); ?>:</b>
	<?php echo CHtml::encode($data->descrp); ?>
	<br />


</div>