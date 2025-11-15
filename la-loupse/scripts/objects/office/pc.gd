extends StaticBody2D

# INTERACTION

# Import detectable component
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D

# Detect the interaction (if E is pressed)
func _ready() -> void:
	interactable.interact = _on_interact

# What will happen after pressing E
func _on_interact():
	
	if (Global.day == 1):
		if (Global.notreDame_done == true):
			print("Was in notre dame")
		else:
			get_tree().change_scene_to_file("res://scenes/events/newspaper.tscn")
	if Global.day == 2:
		if (Global.louvre_done == true):
			pass
		else:
			pass
	if Global.day == 3:
		if (Global.catacombes_done == true):
			pass
		else:
			pass
