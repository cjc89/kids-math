extends Node


export(int,1,10) var exercises = 1
export(MathManager.MathMode) var mode = MathManager.MathMode.ADDITION


var _manager: MathManager

func _ready():
	_manager = MathManager.new(mode, exercises)
	_loadExercise()


func _loadExercise():
	var exercise: _Exercise = _manager.currentExercise()
	
	$BoundingContainer/Train.setNumberOfCars(exercise.left, exercise.right)
	$HBoxContainer/Left.text = str(exercise.left)
	$HBoxContainer/Right.text = str(exercise.right)
	$HBoxContainer/Symbol.text = exercise.symbol()
