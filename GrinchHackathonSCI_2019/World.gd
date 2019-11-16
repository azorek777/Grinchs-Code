# Hackathon November 2019
# Scena reprezentuje główne okno gry

extends Node

var horizontal_value = 800
var vertical_value = 600
var offset_x = 100
var offset_y = 100

var gift_data = preload("res://gift/Gift.tscn")

func _ready():
	randomize()
	pass
