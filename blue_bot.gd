extends "res://basic_bot.gd"


func control(delta):
	$Turret.look_at(get_target)
