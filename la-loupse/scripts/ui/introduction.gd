extends Control


func _on_continue_pressed() -> void:
	print("Continue to chapter 1")
	get_tree().change_scene_to_file("res://scenes/ui/Cover_Chap1.tscn")


func _on_return_pressed() -> void:
	print("Return to main menu")
	get_tree().change_scene_to_file("res://scenes/ui/Main_menu.tscn")
