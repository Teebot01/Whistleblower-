extends Panel

@onready var date = $Date # Store the date text in the variable "date"

@onready var article_2_image = $Article2Image
@onready var article_3_image = $Article3Image
@onready var article_4_image = $Article4Image
@onready var article_5_image = $Article5Image

@onready var article_2_text = $Article2Text
@onready var article_3_text = $Article3Text
@onready var article_4_text = $Article4Text
@onready var article_5_text = $Article5Text

func change_date(): # Depending on how many days have gone by, change the date on newspaper
	if manager.days_passed == 0:
		date.text = "24 . 06 . 99"
	elif manager.days_passed == 1:
		date.text = "25 . 06 . 99"
	elif manager.days_passed == 2:
		date.text = "26 . 06 . 99"
	elif manager.days_passed == 3:
		date.text = "27 . 06 . 99"
	elif manager.days_passed == 4:
		date.text = "28 . 06 . 99"

func change_articles():
	if manager.days_passed >= 1 and manager.public_rep > manager.corporation_rep:
		article_3_image.texture = load("res://art/posters/revolution/revolution_poster_3.png")
		article_3_text.text = "Rumours of a newly emerging human rights activism group calling themselves 'The Rèabhlaid' circulate in the New London area."
	if manager.days_passed >= 2 and manager.public_rep > manager.corporation_rep:
		article_2_image.texture = load("res://art/posters/revolution/revolution_poster_2.png")
		article_2_text.text = "Police arrests for vandalism and disturbing the peace increase rapidly, officer Morgan of the Metropolitan police states that many suspects claim to be members of The Rèabhlaid."
	if manager.days_passed >= 3 and manager.public_rep > manager.corporation_rep:
		article_5_image.texture = load("res://art/posters/revolution/revolution_poster_5.png")
		article_5_text.text = "Breaking News! CEO of Octrocorp, Henry Alva's televised speech has been interrupted by the mysterious leader of The Rèabhlaid, calling for all citizens to rebel against the security giant."
	if manager.days_passed >= 4 and manager.public_rep > manager.corporation_rep:
		article_4_image.texture = load("res://art/posters/revolution/revolution_poster_4.png")
		article_4_text.text = "Breaking News! Seemingly overnight, thousands of citizens have joined the infamous rebellion group, and are announcing plans to storm the Octrocorp HQ tonight! Stay tuned for updates."

func _ready() -> void: 
	change_date()
	if manager.days_passed > 0:
		change_articles()
		
func _on_news_button_pressed() -> void: # if the newspaper button is pressed, open the newspaper
	if self.visible == true:
		self.visible = false
	elif self.visible == false:
		self.visible = true
