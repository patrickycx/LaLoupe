extends Control

func _ready() -> void:
	await get_tree().create_timer(1).timeout
	Global.destination = "res://scenes/rooms/office.tscn"
	Global.chapterNum = 1
	Global.chapterName = "Notre-Dame"
	get_tree().change_scene_to_file("res://scenes/ui/coverChapter.tscn")
