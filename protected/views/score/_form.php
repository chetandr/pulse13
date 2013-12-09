<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'score-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'round'); ?>
		<?php echo $form->textField($model,'round'); ?>
		<?php echo $form->error($model,'round'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'partcipating_team'); ?>
		<?php echo $form->textField($model,'partcipating_team'); ?>
		<?php echo $form->error($model,'partcipating_team'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'score'); ?>
		<?php echo $form->textField($model,'score'); ?>
		<?php echo $form->error($model,'score'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->