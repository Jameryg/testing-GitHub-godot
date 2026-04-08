extends Node2D

var coords: Vector2 = Vector2(0,0)

func _ready() -> void:
	position = coords * Vector2($TextureRect.size)
	$TextureRect/Label.text = "(" + str(int(coords.x)) + "," + str(int(coords.y)) + ")"


func setCoords(x: float, y: float) -> void:
	coords = Vector2(x,y)

func setCoordsVect(new_coords: Vector2) -> void:
	coords = new_coords
