extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Global.day = 1
	Global.task = []
	Global.finished = []
	Global.chapterNum = 1
	Global.chapterName = "Notre-Dame"
	Global.destination = ""
	Global.player_can_move = true  # so the he cant move while talking
	Global.reading = ""


	## Secrets und so
	Global.outcomeCompass_firstDay = 0 
	## 0 the beginning. Depending on what Jean posts at the end of the day it will 
	## go up or down (results < 0 will lead to the negative ending.
	## results >= 0 will lead to a positive ending 


	## Chatted tracker
	Global.chatted_to_priest = 0
	Global.chatted_to_techBaron = 0
	Global.chatted_to_cat = 0
	Global.chatted_to_police = 0
	Global.chatted_to_activist = 0
	Global.chatted_to_robot = 0

	## Tracking what parts of the mission are done
	Global.notreDame_done = false
	Global.louvre_done = false
	Global.catacombes_done = false


	## Office tasks
	Global.read_news = false
	Global.read_email = false

	## Secrets
	Global.secrets = [
		"skyscraper", # secret negative
		"culture",
		"priest", # secret positive
		#"candle",  #secret positive
	]

	Global.ending = ""
	Global.endingline2 = ""
	Global.article_done = false
	print("Back to main")
	get_tree().change_scene_to_file("res://scenes/ui/Main_menu.tscn")
