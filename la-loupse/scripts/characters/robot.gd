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
		if Input.is_action_just_pressed("interaction"):
			if Global.chatted_to_robot == 0:
				Global.chatted_to_robot += 1
				$Dialogue.start()
				Global.ending = "You have reached the end of the story. Culture has faded."
				Global.endingline2 = "The machines advance. And Paris… no longer remembers itself."
				is_roaming = false
				is_chatting = true
				$AnimatedSprite2D.play("idle")
				get_tree().change_scene_to_file("res://scenes/ui/endScene.tscn")


func choose(array):
	array.shuffle()
	return array.front()


func move(delta):
	if !is_chatting:
		position += dir * speed * delta


func _on_dialogue_d_finished() -> void:
	is_chatting = false
	is_roaming = true



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":        
		player = body
		player_in_chat_zone = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":        
		player_in_chat_zone = false
