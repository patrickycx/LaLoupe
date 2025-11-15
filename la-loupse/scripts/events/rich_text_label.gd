extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var filePath = "res://texts/newspapers/newspaper1.txt"
	var content = FileAccess.open(filePath, FileAccess.READ).get_as_text()
	set_text(content)
