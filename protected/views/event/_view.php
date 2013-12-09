<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('eventid')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->eventid), array('view', 'id'=>$data->eventid)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date')); ?>:</b>
	<?php echo CHtml::encode($data->date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('perclan')); ?>:</b>
	<?php echo CHtml::encode($data->perclan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('perteam')); ?>:</b>
	<?php echo CHtml::encode($data->perteam); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('ratio')); ?>:</b>
	<?php echo CHtml::encode($data->ratio); ?>
	<br />


</div>