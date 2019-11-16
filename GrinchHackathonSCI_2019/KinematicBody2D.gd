extends KinematicBody2D

var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = 300
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		motion.x = -300
		$Sprite.flip_h = true
	elif Input.is_action_pressed("ui_down"):
		motion.y = 300
	elif Input.is_action_pressed("ui_up"):
		motion.y = -300
	else:
		motion.x = 0
		motion.y = 0
	move_and_slide(motion)

	pass