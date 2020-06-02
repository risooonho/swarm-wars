extends Spatial


# Declare member variables here. Examples:
var vel
var movement = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_translate(cameramovement(delta))
	pass

func cameramovement(delta):
	
	if Input.is_key_pressed(16777237):
		vel = 100
	else:
		vel = 50
	
	if Input.is_key_pressed(68):# RIGHT
		movement.x = -1
	elif Input.is_key_pressed(65):# LEFT
		movement.x = 1
	else:
		movement.x = 0
		
	
	if Input.is_key_pressed(83):# DOWN
		movement.z = -1
	elif Input.is_key_pressed(87):# UP
		movement.z = 1
	else:
		movement.z = 0
		

	
	return movement*vel*delta
