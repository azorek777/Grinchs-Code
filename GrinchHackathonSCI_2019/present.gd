extends TextureButton

# 2019-05-11 acodemia.pl


var hit = 0
var max_hit = 10

func _ready():
	pass

#func _process(delta):
#	pass

func _on_Fly_pressed():
	hit = hit + 1
	print (hit)
	pass


func _on_Timer_script_changed():
	pass # replace with function body
