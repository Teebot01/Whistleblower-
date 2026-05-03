extends Sprite2D

func _on_back_button_pressed() -> void: # when the player hits the back button, go back to the menu
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
