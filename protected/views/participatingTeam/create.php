<?php
$this->breadcrumbs=array(
	'Participating Teams'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List ParticipatingTeam', 'url'=>array('index')),
	array('label'=>'Manage ParticipatingTeam', 'url'=>array('admin')),
);
?>

<h1>Create ParticipatingTeam</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model,'events'=>$events)); ?>