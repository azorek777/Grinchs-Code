extends KinematicBody2D

# 2019-01-05 acodemia.pl

var health = 100
var on_scene = false

var motion_speed = 100
var shooting = false


func _ready():
	set_physics_process(true)
	pass
	
	
func _physics_process(delta):
	
	var motion = Vector2()

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

func Im_Player():
	pass