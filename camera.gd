extends Camera2D


export var speed = 10.0



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mov_x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var mov_y = int(Input.is_action_pressed("ui_up")) - int(Input.is_action_pressed("ui_down"))
	position.x += mov_x
	position.y += mov_y
