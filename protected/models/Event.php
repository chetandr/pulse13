<?php

/**
 * This is the model class for table "Events".
 *
 * The followings are the available columns in table 'Events':
 * @property integer $eventid
 * @property string $name
 * @property string $date
 * @property integer $perclan
 * @property integer $perteam
 * @property integer $ratio
 */
class Event extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Event the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'Events';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, date, perclan, perteam, ratio', 'required'),
			array('perclan, perteam, ratio', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>256),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('eventid, name, date, perclan, perteam, ratio', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'eventid' => 'Eventid',
			'name' => 'Name',
			'date' => 'Date',
			'perclan' => 'Perclan',
			'perteam' => 'Perteam',
			'ratio' => 'Ratio',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('eventid',$this->eventid);
		$criteria->compare('name',$this->name,true);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('perclan',$this->perclan);
		$criteria->compare('perteam',$this->perteam);
		$criteria->compare('ratio',$this->ratio);

		return new CActiveDataProvider(get_class($this), array(
			'criteria'=>$criteria,
		));
	}
}