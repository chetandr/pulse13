<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'player-form',
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
		<?php echo $form->labelEx($model,'team'); ?>
		<?php echo $form->textField($model,'team'); ?>
		<?php echo $form->error($model,'team'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'group'); ?>
		<?php echo $form->textField($model,'group',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'group'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'participations'); ?>
		<?php echo $form->textField($model,'participations'); ?>
		<?php echo $form->error($model,'participations'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'gender'); ?>
		<?php echo $form->textField($model,'gender',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'gender'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->