extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var chapterNumber = 0
	match Global.chapterNum:
		1:
			chapterNumber = "Chapter One"
		2:
			chapterNumber = "Chapter Two"
		3:
			chapterNumber = "Chapter Three"
	set_text(chapterNumber)
