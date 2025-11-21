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
			if Global.read_email and Global.read_news and not Global.notreDame_done:
				print("Direction: Notre-Dame.")
				Global.notreDame_done = true
				get_tree().change_scene_to_file("res://scenes/rooms/notreDame.tscn")
			elif Global.notreDame_done:
				Textbox.loadText("lateToGo")
			else:
				Textbox.loadText("waitDay1Tasks")
		2:
			print("Direction: Louvre.")
			Global.louvre_done = true
			get_tree().change_scene_to_file("res://scenes/rooms/louvre.tscn")
		3:
			if Global.endingDialogue == "good":
				print("Direction: Catacombs.")
				Global.catacombes_done = true
				get_tree().change_scene_to_file("res://scenes/rooms/catacombs.tscn")
			else:
				print("Direction: Catacombs.")
				Global.catacombes_done = true
				get_tree().change_scene_to_file("res://scenes/rooms/catacombs2.tscn")
