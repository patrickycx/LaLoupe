extends StaticBody2D

# INTERACTION

# Import detectable component
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D

# Detect the interaction (if E is pressed)
func _ready() -> void:
	interactable.interact = _on_interact

func time_to_sleep(day, finished):
	return (day == 1 and "notreDameScene" in finished) or (day == 2 and "louvreScene" in finished) or (day == 3 and "catacombsScene"  in finished)
	

# What will happen after pressing E
func _on_interact():
	if not(time_to_sleep(Global.day, Global.finished)):
		print("Success: It's not time to sleep.")
	else:
		Global.day += 1
		print("Success: I sleep.")
		Global.destination = "res://scenes/rooms/office.tscn"
		Global.chapterNum = Global.day
		match Global.chapterNum:
			1:
				Global.chapterName = "Notre-Dame"
			2:
				Global.chapterName = "Louvre"
			3:
				Global.chapterName = "Catacombs"
		get_tree().change_scene_to_file("res://scenes/ui/coverChapter.tscn")
	
