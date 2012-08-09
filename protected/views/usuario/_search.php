<?php
/* @var $this UsuarioController */
/* @var $model Usuario */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_status_usuario'); ?>
		<?php echo $form->textField($model,'id_status_usuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_nivel_usuario'); ?>
		<?php echo $form->textField($model,'id_nivel_usuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'apaterno'); ?>
		<?php echo $form->textField($model,'apaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'amaterno'); ?>
		<?php echo $form->textField($model,'amaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'login'); ?>
		<?php echo $form->textField($model,'login'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'mail'); ?>
		<?php echo $form->textField($model,'mail'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_sitio'); ?>
		<?php echo $form->textField($model,'id_sitio'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->