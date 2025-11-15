extends Control

signal d_finished

@export_file("*.json") var d_file

var dialogue = []
var current_dialogue_id = 2
var d_active = false

func _ready():
	$NinePatchRect.visible = false
	
func start(char_key):
	if d_active:
		return
	d_active = true
	$NinePatchRect.visible = true
	var all_dialogues = load_dialogue()
	dialogue = all_dialogues[char_key]
	current_dialogue_id = -1
	next_script()
	
func load_dialogue():
	var file = FileAccess.open("res://scripts/characters/dialogues.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content
	
func _input(event):
	if !d_active:
		return
	if event.is_action_pressed("Enter"):	
		next_script()
	
func next_script():
	current_dialogue_id += 1
	if current_dialogue_id >= len(dialogue):
		d_active = false
		$NinePatchRect.visible = false
		emit_signal("d_finished")
		return


	$NinePatchRect/name.text = dialogue[current_dialogue_id]["name"]
	print(dialogue[current_dialogue_id]["text"])
	$NinePatchRect/text.text = dialogue[current_dialogue_id]["text"]
	
