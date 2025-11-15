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
	Global.finished.append("notreDameScene")
	print("Success: I go back to my room.")
	get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")
	
