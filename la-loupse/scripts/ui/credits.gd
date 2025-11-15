extends Control


func _on_return_pressed() -> void:
	print("Return to main menu")
	get_tree().change_scene_to_file("res://scenes/ui/Main_menu.tscn")
