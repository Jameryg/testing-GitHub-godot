extends Node2D

@export var square_scene: PackedScene
var square_instance

func _ready() -> void:
	var coords = [Vector2(-1,-5), Vector2(0,-5), Vector2(1,-5), 
		Vector2(-2,-4), Vector2(2,-4),
		Vector2(-3,-4), Vector2(3,-4),
		Vector2(-4,-3), Vector2(4,-3),
		Vector2(-4,-2), Vector2(4,-2),
		Vector2(-5,-1), Vector2(5,-1),
		Vector2(-5,0), Vector2(5,0),
		Vector2(-5,1), Vector2(5,1),
		Vector2(-4,2), Vector2(4,2),
		Vector2(-4,3), Vector2(4,3),
		Vector2(-3,4), Vector2(3,4),
		Vector2(-2,4), Vector2(2,4),
		Vector2(-1,5), Vector2(0,5), Vector2(1,5)]
	
	#for coord in coords:
		#square_instance = square_scene.instantiate()
		#square_instance.setCoordsVect(coord)
		#add_child(square_instance)
	
	#makeCircle(16)
	makeCircleR(21)


func makeCircleR(radius: int) -> void:
	var coords = []
	
	for i in range(-radius, radius+1):
		for j in range(-radius, radius+1):
			if (j == 0):
				coords.push_back(Vector2(i, 0))
			if (pow(i,2) + pow(j,2) <= pow(radius,2) + (float(radius)/2)):
				coords.push_back(Vector2(i, j))
	
	
	
	for coord in coords:
		square_instance = square_scene.instantiate()
		square_instance.setCoordsVect(coord)
		add_child(square_instance)
