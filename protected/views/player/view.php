<?php
$this->breadcrumbs=array(
	'Players'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Player', 'url'=>array('index')),
	array('label'=>'Create Player', 'url'=>array('create')),
	array('label'=>'Update Player', 'url'=>array('update', 'id'=>$model->empid)),
	array('label'=>'Delete Player', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->empid),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Player', 'url'=>array('admin')),
);
?>

<h1>View Player #<?php echo $model->empid; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'empid',
		'name',
		'team',
		'group',
		'participations',
		'gender',
	),
)); ?>
