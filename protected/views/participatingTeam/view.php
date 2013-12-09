<?php
$this->breadcrumbs=array(
	'Participating Teams'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List ParticipatingTeam', 'url'=>array('index')),
	array('label'=>'Create ParticipatingTeam', 'url'=>array('create')),
	array('label'=>'Update ParticipatingTeam', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete ParticipatingTeam', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage ParticipatingTeam', 'url'=>array('admin')),
);
?>

<h1>View ParticipatingTeam #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'player',
		'event',
	),
)); ?>
