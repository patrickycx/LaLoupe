extends Control


func _on_continue_pressed() -> void:
	Global.destination = "res://scenes/rooms/office.tscn"
	Global.chapterNum = 1
	Global.chapterName = "Notre-Dame"
	get_tree().change_scene_to_file("res://scenes/ui/coverChapter.tscn")


func _on_return_pressed() -> void:
	print("Return to main menu")
	get_tree().change_scene_to_file("res://scenes/ui/Main_menu.tscn")
