<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('round')); ?>:</b>
	<?php echo CHtml::encode($data->round); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('partcipating_team')); ?>:</b>
	<?php echo CHtml::encode($data->partcipating_team); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('score')); ?>:</b>
	<?php echo CHtml::encode($data->score); ?>
	<br />


</div>