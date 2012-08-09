<?php
/* @var $this UsuarioController */
/* @var $model Usuario */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_status_usuario')); ?>:</b>
	<?php echo CHtml::encode($data->id_status_usuario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_nivel_usuario')); ?>:</b>
	<?php echo CHtml::encode($data->id_nivel_usuario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('apaterno')); ?>:</b>
	<?php echo CHtml::encode($data->apaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('amaterno')); ?>:</b>
	<?php echo CHtml::encode($data->amaterno); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('login')); ?>:</b>
	<?php echo CHtml::encode($data->login); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
	<?php echo CHtml::encode($data->password); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mail')); ?>:</b>
	<?php echo CHtml::encode($data->mail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_sitio')); ?>:</b>
	<?php echo CHtml::encode($data->id_sitio); ?>
	<br />

	*/ ?>

</div>