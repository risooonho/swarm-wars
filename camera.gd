extends Spatial


# Declare member variables here. Examples:
var vel = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_translate(cameramovement(delta))
	pass

func cameramovement(delta):
	var movement = Vector3()
	
	# LEFT
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	else:
		movement.x = 0

	# RIGHT
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	else:
		movement.x = 0
			
	# UP
	if Input.is_action_pressed("ui_up"):
		movement.z -= 1
	else:
		movement.z = 0
		
	# DOWN
	if Input.is_action_pressed("ui_down"):
		movement.z += 1
	else:
		movement.z = 0
	
	return movement*vel*delta
