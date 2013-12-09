<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'participating-team-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
	<div class="row">
		<?php echo $form->labelEx($model,'event'); ?>
		 <?php echo $form->hiddenField($model,'event',array()); ?>
		<?php
		$this->widget('zii.widgets.jui.CJuiAutoComplete',array(
			'model'=>$model,
			'name'=>'event_id',
			'source'=>$events,
			// additional javascript options for the autocomplete plugin
			'options'=>array(
				'minLength'=>'2',
				'select'=>"js:complete",
			),
			'htmlOptions'=>array(
				'style'=>'height:20px;',
			),
		));
		?>
		<?php echo $form->error($model,'event'); ?>
	</div>
	<div id='TeamForm'></div>

	

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
<script>
function complete(events,pulseEvent){
	$('#ParticipatingTeam_event').val(pulseEvent.item.id);
}
</script>