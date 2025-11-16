extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	match Global.day:
		1:
			set_text("")
		2:
			set_text("Investigate Paris – November 1999
PARIS AT A CROSSROADS: IS OUR CULTURE CRUMBLING?

By Jean, Investigative Reporter (mostly)

As debates over culture intensify, Tech-Billionaire Bernad Arnaque pushes plans to demolish the Louvre and replace it with a neon-lit skyscraper bearing his name. During our conversation, he dismissed Parisian heritage as “relics of the past” and insisted that art belongs in private homes, not museums. His vision extends beyond the Louvre: Arnaque is already eyeing Notre-Dame for “modern repurposing,” calling it a perfect candidate for a luxury mall.
As 1999 draws to a close, the fate of the city’s heritage hangs in the balance. Culture may not vanish overnight, but it can erode silently, one neglected masterpiece at a time.
")
		3:
			set_text("Investigate Paris – November 1999
THE MONA LISA VANISHES: COINCIDENCE OR CONSPIRACY?
By Jean, Investigative Reporter (still)

Chaos erupted at the Louvre today as the Mona Lisa was reported stolen. Witnesses described a sudden lockdown, confused guards, and one very unhelpful tech-billionaire: Bernad Arnaque, who happened to be on the scene—again. When asked for comment, he dismissed the masterpiece as “dried oil on paper” and hinted that he would rather replace the entire museum with his long-dreamed-of skyscraper.
Whether the theft is an act of cultural sabotage or an unfortunate coincidence remains unclear. But one thing is certain: with Paris’ most iconic painting gone and Arnaque circling the museum like a hawk, the battle for the city’s cultural soul has never felt more urgent.
")
