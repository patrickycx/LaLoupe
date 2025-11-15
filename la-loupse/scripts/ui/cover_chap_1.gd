extends Control

func _input(event: InputEvent) -> void:
	if event is InputEventJoypadButton or event is InputEventMouseButton or event is InputEventKey:
		print("Start chapter 1")
		get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")
