extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: # On pressing escape, return to the menu
	if Input.is_action_pressed("exit_newspaper"):
		get_tree().quit()
