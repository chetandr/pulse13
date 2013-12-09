<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('empid')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->empid), array('view', 'id'=>$data->empid)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('team')); ?>:</b>
	<?php echo CHtml::encode($data->team); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('group')); ?>:</b>
	<?php echo CHtml::encode($data->group); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('participations')); ?>:</b>
	<?php echo CHtml::encode($data->participations); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('gender')); ?>:</b>
	<?php echo CHtml::encode($data->gender); ?>
	<br />


</div>