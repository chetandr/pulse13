<?php
$this->breadcrumbs=array(
	'Participations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Participation', 'url'=>array('index')),
	array('label'=>'Manage Participation', 'url'=>array('admin')),
);
?>

<h1>Create Participation</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>