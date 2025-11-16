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
	$Timer.start()


func _process(_delta):
	# Animation logic
	if current_state == IDLE or current_state == NEW_DIR:
		$AnimatedSprite2D.play("idle")
	elif current_state == MOVE and !is_chatting:
		$AnimatedSprite2D.play("move")

	# Roaming logic
	if is_roaming:
		match current_state:
			IDLE:
				pass
			NEW_DIR:
				dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
			MOVE: 
				pass
				#move(delta)
	# Interaction
	if player_in_chat_zone:
		if Input.is_action_just_pressed("interaction"):
			if Global.chatted_to_techBaron == 0:
				Global.chatted_to_techBaron += 1
				$Dialogue.start("techBaron", Global.chatted_to_techBaron)
				## TODO implement add secrets to an array
				Global.notreDame_done = true
			elif Global.chatted_to_techBaron == 1:
				Global.chatted_to_techBaron += 1
				$Dialogue.start("techBaron", Global.chatted_to_techBaron)
			

func choose(array):
	array.shuffle()
	return array.front()


func move(delta):
	if !is_chatting:
		position += dir * speed * delta


func _on_chat_detection_area_body_entered(body: Node2D) -> void:
	if body.name == "player":        
		player = body
		player_in_chat_zone = true


func _on_chat_detection_area_body_exited(body: Node2D) -> void:
	if body.name == "player":      
		player_in_chat_zone = false


func _on_timer_timeout():
	$Timer.wait_time = choose([0.5, 1, 1.5])
	$Timer.start()   
	current_state = choose([IDLE, NEW_DIR, MOVE])
	

func _on_dialogue_d_finished() -> void:
	print("finished")
	Global.secrets.erase("skyscraper")
	Global.secrets.erase("culture")
	print(Global.secrets)
	is_chatting = false
	is_roaming = true
	Global.player_can_move = true
	
