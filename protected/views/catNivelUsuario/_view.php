<?php
/* @var $this CatNivelUsuarioController */
/* @var $model CatNivelUsuario */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_nivel_usuario')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_nivel_usuario), array('view', 'id'=>$data->id_nivel_usuario)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descrp')); ?>:</b>
	<?php echo CHtml::encode($data->descrp); ?>
	<br />


</div>