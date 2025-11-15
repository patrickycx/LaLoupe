extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var label = $TextboxContainer/MarginContainer2/Label

enum State {
	READY,
	READING,
	FINISHED,
}

func _ready() -> void:
	hide_textbox()

var current_state = State.READY
var text_queue = []
var textDisplayed = false

func _process(_delta):
	match current_state:
		State.READY:
			pass
			#change_state(State.READING)
		State.READING:
			if !text_queue.is_empty():
				display_text()
			if Input.is_action_just_pressed("ui_accept"):
				change_state(State.FINISHED)     # <-- fixed

		State.FINISHED:
			if Input.is_action_just_pressed("ui_accept"):
				textDisplayed = false
				change_state(State.READY)
				hide_textbox()

# ONLY USE THE NAME OF THE FILE, NO ADDRESS, NO .JSON
func loadText(data):
	var file = FileAccess.open("res://texts/textbox/" + data + ".json", FileAccess.READ)
	print("Loaded textbox file: " + data)
	var content = JSON.parse_string(file.get_as_text())
	text_queue = content
	textDisplayed = true
	display_text()
	print("Content saved as text_queue")
	
func queue_text(next_text):
	text_queue.push_back(next_text)

func hide_textbox():
	label.text = ""
	textbox_container.hide()

func show_textbox():
	label.text = ""
	textbox_container.show()

func display_text():
	var next_text = text_queue.pop_front()
	show_textbox()
	label.text = next_text
	change_state(State.FINISHED)

func change_state(next_state):
	current_state = next_state
	match current_state:
		State.READY:
			print("Changing state to: State.READY")

		State.READING:
			print("Changing state to: State.READING")

		State.FINISHED:
			print("Changing state to: State.FINISHED")
