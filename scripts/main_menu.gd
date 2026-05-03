extends Node2D

# When the start button is pressed, start the game by going to the context page
func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/context_page.tscn")

# If the quit button is pressed, quit and close the game
func _on_quit_button_pressed() -> void:
	get_tree().quit()

# If the tutorial button is pressed, go to the tutorial page
func _on_tutorial_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")
