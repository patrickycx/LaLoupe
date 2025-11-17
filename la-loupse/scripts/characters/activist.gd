extends CharacterBody2D

const speed = 100.0
var current_state = 0

var start_pos

var is_roaming = true
var is_chatting = false

var player
var player_in_chat_zone = false

enum {
	IDLE,
	NEW_DIR,
	MOVE
}

func _ready():
	randomize()
	start_pos = position
	
func _process(_delta):
	# Interaction
	if player_in_chat_zone:
		if Input.is_action_just_pressed("interaction"):
			if Global.chatted_to_activist == 0:
				Global.chatted_to_activist += 1
				Global.ending = "You saved Parisian culture."
				Global.endingline2 = "Thank you for listening when others chose silence."
				Global.endingDialogue = "good"
				is_roaming = false
				is_chatting = true
				print("Activist ending")
				get_tree().change_scene_to_file("res://scenes/ui/endDialogue.tscn")


func choose(array):
	array.shuffle()
	return array.front()

func _on_dialogue_d_finished() -> void:
	is_chatting = false
	is_roaming = true

func _on_interact_area_body_entered(body: Node2D) -> void:
	if body.name == "player":        
		player = body
		player_in_chat_zone = true

func _on_interact_area_body_exited(body: Node2D) -> void:
	if body == player:
		player_in_chat_zone = false
