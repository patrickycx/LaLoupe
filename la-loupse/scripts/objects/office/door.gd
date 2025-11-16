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
			if Global.read_email and Global.read_news:
				print("Direction: Notre-Dame.")
				get_tree().change_scene_to_file("res://scenes/rooms/notreDame.tscn")
			else:
				Textbox.loadText("waitDay1Tasks")
		2:
			print("Direction: Louvre.")
			get_tree().change_scene_to_file("res://scenes/rooms/louvre.tscn")
		3:
			print("Direction: Catacombs.")
			get_tree().change_scene_to_file("res://scenes/rooms/catacombs.tscn")
	
