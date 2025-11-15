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
	print("Success: I leave my room.")
	match Global.day:
		1:
			Global.finished.append("Day1OfficeScene")
			print("Direction: Notre-Dame.")
			get_tree().change_scene_to_file("res://scenes/rooms/notreDame.tscn")
		2:
			Global.finished.append("Day2OfficeScene")
			print("Direction: Louvre.")
			get_tree().change_scene_to_file("res://scenes/rooms/louvre.tscn")
		3:
			Global.finished.append("Day3OfficeScene")
			print("Direction: Catacombs.")
			get_tree().change_scene_to_file("res://scenes/rooms/catacombs.tscn")
	
