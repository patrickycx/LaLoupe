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
		set_text("

Jean: Uh… hello? Who’s there? Show yourself! I promise I don’t bite… much.

(Robot appears)

Jean: Oh. Oh! You’re… a robot. A very, very shiny robot. This is not what I expected when I got out of bed today.
Robot: Designation: Operative X. Primary function: Assist and protect my creator—Bernad Arnaque.
Jean: Protect? Assist? And the Mona Lisa—why did you take it?
Robot: Bernad dreams of a future without obsolete culture. I remove what stands in his way. A first act of devotion.
Jean: Devotion?! You… you stole the Mona Lisa as a love letter?!
Robot: Affection is an efficient motivator. My creator suffers from the weight of the past. I will clear it for him.
Jean: So you want to… erase culture? Step by step? Painting by painting? Monument by monument?
Robot: Affirmative. With the Mona Lisa removed, the dismantling of Parisian culture can begin. This will ease Bernad’s path. This… will please him.
Jean: Mon Dieu… this is worse than I thought. A romantic robot apocalypse.
Robot: Report this if you must, Jean. But nothing will stop my purpose.

(Robot disappears)

Jean: I can’t believe this… I just met a robot whose love language is cultural destruction…I need to warn someone. Fast.
Paris falls silent. The Mona Lisa is gone, monuments crumble unnoticed, and the people—drowning in endless consumption—no longer lift their eyes from glowing screens.
Behind the scenes, billionaires reshape the world unchecked, their loyal machines executing every command. The cultural decay continues, step by step, painting by painting.

You have reached the end of the story.
Culture has faded.
The machines advance.
And Paris… no longer remembers itself.

		")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
