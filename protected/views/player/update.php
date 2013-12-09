<?php
$this->breadcrumbs=array(
	'Players'=>array('index'),
	$model->name=>array('view','id'=>$model->empid),
	'Update',
);

$this->menu=array(
	array('label'=>'List Player', 'url'=>array('index')),
	array('label'=>'Create Player', 'url'=>array('create')),
	array('label'=>'View Player', 'url'=>array('view', 'id'=>$model->empid)),
	array('label'=>'Manage Player', 'url'=>array('admin')),
);
?>

<h1>Update Player <?php echo $model->empid; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>