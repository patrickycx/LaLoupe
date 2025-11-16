extends CharacterBody2D

const speed = 100.0
var current_state = 0

var dir = Vector2.RIGHT
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

	# Roaming logic
	if is_roaming:
		match current_state:
			IDLE:
				pass
			NEW_DIR:
				dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
			MOVE: 
				pass
	# Interaction
	if player_in_chat_zone:
		print("player in zone")
		if Input.is_action_just_pressed("interaction"):
			print("interaction pressed")
			if Global.chatted_to_activist == 0:
				Global.chatted_to_activist += 1
				$Dialogue.start()
				Global.ending = "You saved Parisian culture."
				Global.endingline2 = "Thank you for listening when others chose silence."
				is_roaming = false
				is_chatting = true
				$AnimatedSprite2D.play("idle")
				print("Activist ending")
				print(Global.chatted_to_activist)
				get_tree().change_scene_to_file("res://scenes/ui/endScene.tscn")


func choose(array):
	array.shuffle()
	return array.front()


func _on_dialogue_d_finished() -> void:
	is_chatting = false
	is_roaming = true


func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.name == "player":        
		player = body
		player_in_chat_zone = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":        
		player_in_chat_zone = false
