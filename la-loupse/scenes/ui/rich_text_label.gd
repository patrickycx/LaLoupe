extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Global.endingDialogue == "good":
		set_text("
		Jean: Uh… hello? Who’s there? Show yourself! I promise I don’t bite… much.

		(Activist appears)

		Jean: Alright… this is getting stranger by the minute. Who are you?

		Activist: I am a Custodian. A guardian of Paris’ forgotten culture.

		Jean: A Custodian… okay. And your cause?
		
		Activist: To remind the people of Paris that their culture is alive. That art, history, and heritage matter… even when others ignore it.
		
		Jean: So… taking the Mona Lisa wasn’t theft for profit, it was… to make people care again?
		
		Activist: Exactly. Sometimes only a small shock can wake a city from indifference.
		
		Jean: I see… It’s not just a story for headlines. It’s a story about reminding the city of its soul.
		
		Activist: Tell it well, Jean. Make sure the message isn’t lost.
		
		Jean: Understood. I’ll write the story of those who fight for what truly matters… even from the shadows.
		
		(Activist disappears)
		
		Jean: Sometimes, the loudest messages come from the quietest voices…
		
		
			Against all odds, Jean's investigation reignited something long forgotten.
		Paris has found its voice again—its love for art, history, and the quiet beauty that binds its people.
		Thanks to Jeans work, the city remembers what truly matters.
		")
	else:
		set_text("")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
