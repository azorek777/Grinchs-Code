extends Node2D


# Hackathon - November 2019

var random_horizontal_value = 800
var random_vertical_value = 600

var offset_x = 100
var offset_y = 100

var gift_value = 0 # ilość pkt za prezent
var value = 0 # punkty
var grinch_max = 200


func _ready():
	randomize()
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

# Jeśli coś wejdzie w obszar prezentu...
func _on_Area2D_gift_body_entered(body):
	updateGiftPosition()
	pass
	
# Funkcja tworzy prezent
func updateGiftPosition():
	
	# losujemy położenie
	var gift_postion_x = int(rand_range(offset_x, (random_horizontal_value - offset_x)))
	var gift_postion_y = int(rand_range(offset_y, (random_vertical_value - offset_y)))
	
	global_position = Vector2(gift_postion_x,gift_postion_y)
	
	# księgujemy punkty
	gift_value = int(rand_range(1, 10))
	value = value + gift_value
	get_parent().get_node("Hud/Label_gift_counter").text = str(value)
	pass
	
	# Grinch się pojawia gdy...
	if(value >= grinch_max):
		get_parent().get_node("AnimationPlayer").play("grinch_anim")
		#get_parent().get_node("Player").visible(false)
		pass