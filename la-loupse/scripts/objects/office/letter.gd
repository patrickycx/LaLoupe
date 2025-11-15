extends StaticBody2D

# INTERACTION

# Import detectable component
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D

# Detect the interaction (if E is pressed)
func _ready() -> void:
	if Global.day != 3:
		interactable.hide()
		sprite_2d.hide()
		position = Vector2(1400, -335)
	else:
		interactable.interact = _on_interact
		position = Vector2(430, -250)

# What will happen after pressing E
func _on_interact():
	# TODO
	print("Success: I read the letter.")
