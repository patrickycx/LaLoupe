extends StaticBody2D

# INTERACTION

# Import detectable component
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D
var madeArticle = false

# Detect the interaction (if E is pressed)
func _ready() -> void:
	interactable.interact = _on_interact

# What will happen after pressing E
func _on_interact():
	
	if (Global.day == 1):
		if (Global.notreDame_done == true):
			if (madeArticle == false):
				print("Was in notre dame")
				get_tree().change_scene_to_file("res://scenes/events/article_maker.tscn")
				madeArticle = true
		else:
			if Global.read_news:
				Global.reading = "email"
				Global.read_email = true
				get_tree().change_scene_to_file("res://scenes/events/email.tscn")
			else:
				Textbox.loadText("waitComputer")
