extends Control

# MAIN BUTTONS

func _on_start_pressed() -> void:
	print("Start game")
	get_tree().change_scene_to_file("res://scenes/ui/Introduction.tscn")

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("continue"):
		print("Start game")
		get_tree().change_scene_to_file("res://scenes/ui/Introduction.tscn")

func _on_credits_pressed() -> void:
	print("Show credits")
	get_tree().change_scene_to_file("res://scenes/ui/Credits.tscn")

func _on_quit_pressed() -> void:
	print("Quit game")
	get_tree().quit()

# SOUND TOGGLE

var sound_on = true

func _on_sound_button_toggled(toggled_on: bool) -> void:
	sound_on = toggled_on
	print("sound " + ["off", "on"][int(sound_on)])
