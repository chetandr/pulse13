<?php
$this->breadcrumbs=array(
	'Participating Teams'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List ParticipatingTeam', 'url'=>array('index')),
	array('label'=>'Create ParticipatingTeam', 'url'=>array('create')),
	array('label'=>'View ParticipatingTeam', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage ParticipatingTeam', 'url'=>array('admin')),
);
?>

<h1>Update ParticipatingTeam <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>