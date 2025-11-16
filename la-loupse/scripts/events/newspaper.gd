extends Node2D

func _on_return_pressed() -> void:
	print("Return")
	get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")
