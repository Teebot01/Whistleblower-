extends Node2D
@onready var manager = $Manager # Store the "manager" node as the variable "manager".
@onready var pause_timer = $Pause # Get and store the scene's timer node in the variable "pause_timer"
@onready var day_text = $Day

var change_date_func_not_called = true

func change_date(): # For each day that a new group of posters is submitted, the "current_day" varaible is increased by 1
	if manager.poster_groups_submitted == 0:
		manager.current_day += 1
		day_text.text = "Day 1"
		
	elif manager.poster_groups_submitted == 1:
		manager.current_day += 1
		day_text.text = "Day 2"
		
	elif manager.poster_groups_submitted == 2:
		manager.current_day += 1
		day_text.text = "Day 3"
		
	elif manager.poster_groups_submitted == 3:
		manager.current_day += 1
		day_text.text = "Day 4"
		
	elif manager.poster_groups_submitted == 4:
		manager.current_day += 1
		day_text.text = "Day 5"

	change_date()
func _on_pause_timeout() -> void: # When the timer in this scene has reached 4 seconds, move on to the next day's work
		get_tree().change_scene_to_file("res://scenes/main.tscn")
