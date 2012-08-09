<?php
/* @var $this UsuarioController */
/* @var $model Usuario */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'usuario-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Campos con <span class="required">*</span> son requeridos.</p>

	<?php echo $form->errorSummary($model); ?>



	<div class="row">
		<?php echo $form->labelEx($model,'nombre'); ?>
		<?php echo $form->textField($model,'nombre'); ?>
		<?php echo $form->error($model,'nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apaterno'); ?>
		<?php echo $form->textField($model,'apaterno'); ?>
		<?php echo $form->error($model,'apaterno'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'amaterno'); ?>
		<?php echo $form->textField($model,'amaterno'); ?>
		<?php echo $form->error($model,'amaterno'); ?>
	</div>



	<div class="row">
		<?php echo $form->labelEx($model,'Estatus Usuario'); ?>
		<?php echo CHtml::activeDropDownList($model, 'id_status_usuario', CHtml::listData(CatStatusUsuario::model()->findAll(), 'id_status_usuario', 'descrp')); ?>
		
		
		<?php echo $form->error($model,'id_status_usuario'); ?>
	</div>



	<div class="row">
		<?php echo $form->labelEx($model,'Rol Usuario'); ?>
	<?php echo CHtml::activeDropDownList($model, 'id_nivel_usuario', CHtml::listData(CatNivelUsuario::model()->findAll(), 'id_nivel_usuario', 'descrp')); ?>
		<?php echo $form->error($model,'id_nivel_usuario'); ?>
	</div>
	
	<div class="row">
		<?php echo $form->labelEx($model,'Ubicación'); ?>
	<?php echo CHtml::activeDropDownList($model, 'id_sitio', CHtml::listData(CatSitio::model()->findAll(), 'id_sitio', 'descripcion')); ?>
		<?php echo $form->error($model,'id_sitio'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'login'); ?>
		<?php echo $form->textField($model,'login'); ?>
		<?php echo $form->error($model,'login'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password'); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'mail'); ?>
		<?php echo $form->textField($model,'mail'); ?>
		<?php echo $form->error($model,'mail'); ?>
	</div>



	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->