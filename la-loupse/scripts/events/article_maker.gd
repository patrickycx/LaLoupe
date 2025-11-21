extends Node2D

var sum := 0
var oneSelected = false

func _on_option_button_item_selected(index: int) -> void:
	oneSelected = true
	match index:
		0: sum += 1
		1: sum += 3
		2: sum += 0
		3: sum -= 3

func _on_option_button_2_item_selected(index: int) -> void:
	match index:
		0: sum += 1
		1: sum += 3
		2: sum += 0
		3: sum -= 3

func _on_option_button_3_item_selected(index: int) -> void:
	match index:
		0: sum += 1
		1: sum += 3
		2: sum += 0
		3: sum -= 3

func _on_submit_pressed():
	if oneSelected == true:
		Global.article_done = true
		Global.outcomeCompass_firstDay = sum
		print(sum)
		if sum >= 0:
			Global.endingDialogue = "good"
		print(Global.endingDialogue)
		print(Global.outcomeCompass_firstDay)
		get_tree().change_scene_to_file("res://scenes/rooms/office.tscn")
		
	
