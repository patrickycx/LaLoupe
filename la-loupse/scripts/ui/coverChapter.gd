extends Control

func _input(event: InputEvent) -> void:
	if event is InputEventJoypadButton or event is InputEventMouseButton:
		print("Next Chapter")
		get_tree().change_scene_to_file(Global.destination)
