extends Sprite2D

var currently_selected_poster # Store the poster that is currently being slected
var possible_posters = ["res://art/posters/corporate/corporate_poster_1.png", "res://art/posters/corporate/corporate_poster_2.png",
"res://art/posters/corporate/corporate_poster_3.png", "res://art/posters/corporate/corporate_poster_4.png",
"res://art/posters/corporate/corporate_poster_5.png", "res://art/posters/revolution/revolution_poster_1.png",
"res://art/posters/revolution/revolution_poster_2.png", "res://art/posters/revolution/revolution_poster_3.png",
"res://art/posters/revolution/revolution_poster_4.png", "res://art/posters/revolution/revolution_poster_5.png"] # An array that holds all the possible poster the player can hold
@onready var posters_count = $"../InfoConsole/FilesSubmitted" # Stores the text for how many files have been submitted in the "posters_count" variable 
@onready var date = $"../InfoConsole/Date" # Stores the text for the date in the "date" variable

func _ready() -> void: # Depending on how many days have gone by, change the date on the console
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
	
func _on_corporate_button_1_pressed() -> void: # For each thumbnail clicked on, load the corresponding poster as the currently selected poster for potentailly being submitted.
	self.texture = load("res://art/posters/corporate/corporate_poster_1.png")
	currently_selected_poster = possible_posters [0]
	
func _on_corporate_button_2_pressed() -> void:
	self.texture = load("res://art/posters/corporate/corporate_poster_2.png")
	currently_selected_poster = possible_posters [1]

func _on_corporate_button_3_pressed() -> void:
	self.texture = load("res://art/posters/corporate/corporate_poster_3.png")
	currently_selected_poster = possible_posters [2]

func _on_corporate_button_4_pressed() -> void:
	self.texture = load("res://art/posters/corporate/corporate_poster_4.png")
	currently_selected_poster = possible_posters [3]

func _on_corporate_button_5_pressed() -> void:
	self.texture = load("res://art/posters/corporate/corporate_poster_5.png")
	currently_selected_poster = possible_posters [4]

func _on_revolution_button_1_pressed() -> void:
	self.texture = load("res://art/posters/revolution/revolution_poster_1.png")
	currently_selected_poster = possible_posters [5]

func _on_revolution_button_2_pressed() -> void:
	self.texture = load("res://art/posters/revolution/revolution_poster_2.png")
	currently_selected_poster = possible_posters [6]

func _on_revolution_button_3_pressed() -> void:
	self.texture = load("res://art/posters/revolution/revolution_poster_3.png")
	currently_selected_poster = possible_posters [7]

func _on_revolution_button_4_pressed() -> void:
	self.texture = load("res://art/posters/revolution/revolution_poster_4.png")
	currently_selected_poster = possible_posters [8]

func _on_revolution_button_5_pressed() -> void:
	self.texture = load("res://art/posters/revolution/revolution_poster_5.png")
	currently_selected_poster = possible_posters [9]

func _on_submit_button_pressed() -> void: # When the submit button is pressed, if the currently_selected_poster == the corresponding element of a poster, increase the number of posters submitted by 1, and depnding if it is a revolution poster or corporate poster, increase the corresponding reputation by a random integer (1 - 5)
	if currently_selected_poster == possible_posters[0]:
		print("Corp1 poster has been selected")
		manager.posters_submitted += 1
		manager.corporation_rep += randi_range(1, 5)
		print(manager.corporation_rep)
	elif currently_selected_poster == possible_posters[1]:
		print("Corp2 poster has been selected")
		manager.posters_submitted += 1
		manager.corporation_rep += randi_range(1, 5)
		print(manager.corporation_rep)
	elif currently_selected_poster == possible_posters[2]:
		print("Corp3 poster has been selected")
		manager.posters_submitted += 1
		manager.corporation_rep += randi_range(1, 5)
		print(manager.corporation_rep)
	elif currently_selected_poster == possible_posters[3]:
		print("Corp4 poster has been selected")
		manager.posters_submitted += 1
		manager.corporation_rep += randi_range(1, 5)
		print(manager.corporation_rep)
	elif currently_selected_poster == possible_posters[4]:
		print("Corp5 poster has been selected")
		manager.posters_submitted += 1
		manager.corporation_rep += randi_range(1, 5)
		print(manager.corporation_rep)
	elif currently_selected_poster == possible_posters[5]:
		print("Rev1 poster has been selected")
		manager.posters_submitted += 1
		manager.public_rep += randi_range(1, 5)
		print(manager.public_rep)
	elif currently_selected_poster == possible_posters[6]:
		print("Rev2 poster has been selected")
		manager.posters_submitted += 1
		manager.public_rep += randi_range(1, 5)
		print(manager.public_rep)
	elif currently_selected_poster == possible_posters[7]:
		print("Rev3 poster has been selected")
		manager.posters_submitted += 1
		manager.public_rep += randi_range(1, 5)
		print(manager.public_rep)
	elif currently_selected_poster == possible_posters[8]:
		print("Rev4 poster has been selected")
		manager.posters_submitted += 1
		manager.public_rep += randi_range(1, 5)
		print(manager.public_rep)
	elif currently_selected_poster == possible_posters[9]:
		print("Rev5 poster has been selected")
		manager.posters_submitted += 1
		manager.public_rep += randi_range(1, 5)
		print(manager.public_rep)
	
	posters_count.text = "Files Submitted(" + str(manager.posters_submitted) + "/3)" # Change the display for how many posters have been submitted as each poster is submitted.
	manager.update_poster_groups_submitted() # Run the update_poster_groups_submitted function

	if manager.posters_submitted == 3: # If the total number of posters uploaded is 3, load the day_notification scene
		get_tree().change_scene_to_file("res://scenes/day_notification.tscn")
