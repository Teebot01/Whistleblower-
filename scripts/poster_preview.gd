extends Sprite2D

var currently_selected_poster # Store the poster that is currently being slected
var possible_posters = ["res://art/posters/corporate/corporate_poster_1.png", "res://art/posters/corporate/corporate_poster_2.png",
"res://art/posters/corporate/corporate_poster_3.png", "res://art/posters/corporate/corporate_poster_4.png",
"res://art/posters/corporate/corporate_poster_5.png", "res://art/posters/revolution/revolution_poster_1.png",
"res://art/posters/revolution/revolution_poster_2.png", "res://art/posters/revolution/revolution_poster_3.png",
"res://art/posters/revolution/revolution_poster_4.png", "res://art/posters/revolution/revolution_poster_5.png"] # An array that holds all the possible poster the player can hold
@onready var poster_value = get_node("../PosterPreview") # Store the "PosterPreview" node in the poster_value variable
@onready var manager = get_node("../Manager") # Store the "manager" node as the variable "manager".

func _on_corporate_button_1_pressed() -> void: # For each thumbnail clicked on, load the corresponding poster as the currently selected poster for potentailly being submitted.
	poster_value.texture = load("res://art/posters/corporate/corporate_poster_1.png")
	currently_selected_poster = possible_posters [0]
	
func _on_corporate_button_2_pressed() -> void:
	poster_value.texture = load("res://art/posters/corporate/corporate_poster_2.png")
	currently_selected_poster = possible_posters [1]

func _on_corporate_button_3_pressed() -> void:
	poster_value.texture = load("res://art/posters/corporate/corporate_poster_3.png")
	currently_selected_poster = possible_posters [2]

func _on_corporate_button_4_pressed() -> void:
	poster_value.texture = load("res://art/posters/corporate/corporate_poster_4.png")
	currently_selected_poster = possible_posters [3]

func _on_corporate_button_5_pressed() -> void:
	poster_value.texture = load("res://art/posters/corporate/corporate_poster_5.png")
	currently_selected_poster = possible_posters [4]

func _on_revolution_button_1_pressed() -> void:
	poster_value.texture = load("res://art/posters/revolution/revolution_poster_1.png")
	currently_selected_poster = possible_posters [5]

func _on_revolution_button_2_pressed() -> void:
	poster_value.texture = load("res://art/posters/revolution/revolution_poster_2.png")
	currently_selected_poster = possible_posters [6]

func _on_revolution_button_3_pressed() -> void:
	poster_value.texture = load("res://art/posters/revolution/revolution_poster_3.png")
	currently_selected_poster = possible_posters [7]

func _on_revolution_button_4_pressed() -> void:
	poster_value.texture = load("res://art/posters/revolution/revolution_poster_4.png")
	currently_selected_poster = possible_posters [8]

func _on_revolution_button_5_pressed() -> void:
	poster_value.texture = load("res://art/posters/revolution/revolution_poster_5.png")
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

	manager.update_poster_groups_submitted()
	if manager.posters_submitted == 3:
		get_tree().change_scene_to_file("res://scenes/day_notification.tscn")
