extends Node2D

func _on_return_pressed() -> void:
	print("Return")
	get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("continue"):
		print("Return")
		get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")
