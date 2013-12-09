<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'event-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>256)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'date'); ?>
		<?php echo $form->textField($model,'date'); ?>
		<?php echo $form->error($model,'date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'perclan'); ?>
		<?php echo $form->textField($model,'perclan'); ?>
		<?php echo $form->error($model,'perclan'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'perteam'); ?>
		<?php echo $form->textField($model,'perteam'); ?>
		<?php echo $form->error($model,'perteam'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'ratio'); ?>
		<?php echo $form->textField($model,'ratio'); ?>
		<?php echo $form->error($model,'ratio'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->