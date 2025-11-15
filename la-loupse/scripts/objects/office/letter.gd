extends StaticBody2D

# INTERACTION

# Import detectable component
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D

# Detect the interaction (if E is pressed)
func _ready() -> void:
	if receiveNews(Global.day, Global.finished):
		interactable.interact = _on_interact
		position = Vector2(430, -250)
	else:
		interactable.hide()
		sprite_2d.hide()
		position = Vector2(1400, -335)

func receiveNews(day, finished):
	return not (day == 1 and "notreDameScene" in finished) or (day == 2 and "louvreScene" in finished) or (day == 3 and "catacombsScene"  in finished) or "readNews" in finished or "readNote" in finished or "readInvitation" in finished
	

# What will happen after pressing E
func _on_interact():
	# TODO
	print("Success: I read the letter.")
