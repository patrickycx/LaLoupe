extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.endingDialogue == "good":
		set_text(Global.ending)
