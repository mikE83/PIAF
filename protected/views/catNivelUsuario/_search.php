<?php
/* @var $this CatNivelUsuarioController */
/* @var $model CatNivelUsuario */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_nivel_usuario'); ?>
		<?php echo $form->textField($model,'id_nivel_usuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descrp'); ?>
		<?php echo $form->textField($model,'descrp'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->