extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var label = $TextboxContainer/MarginContainer2/Label

enum State {
	READY,
	READING,
	FINISHED,
}

var current_state = State.READY
var text_queue = []

func _ready():
	print("Starting state: State.READY")
	hide_textbox()
	queue_text("First Test Text...")
	queue_text("Second Test Text...")
	queue_text("Third Test Text...")
	queue_text("Forth Text")

func _process(delta):
	match current_state:
		State.READY:
			if !text_queue.is_empty():
				display_text()
			if Input.is_action_just_pressed("ui_accept"):
				State.FINISHED
				

		State.READING:
			# Here you could add typing or other effects later
			pass
		
		State.FINISHED:
			if Input.is_action_just_pressed("ui_accept"):
				change_state(State.READY)
				hide_textbox()

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
