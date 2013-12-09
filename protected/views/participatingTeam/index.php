<?php
$this->breadcrumbs=array(
	'Participating Teams',
);

$this->menu=array(
	array('label'=>'Create ParticipatingTeam', 'url'=>array('create')),
	array('label'=>'Manage ParticipatingTeam', 'url'=>array('admin')),
);
?>

<h1>Participating Teams</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
