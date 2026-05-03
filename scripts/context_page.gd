extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void: # If the "move_to_next_scene" action is pressed using te space bar, move to the day notification scene
	if Input.is_action_pressed("move_to_next_scene"):
		get_tree().change_scene_to_file("res://scenes/day_notification.tscn")
