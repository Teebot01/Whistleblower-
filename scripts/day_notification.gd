extends Node2D
@onready var pause_timer = $Pause # Get and store the scene's timer node in the variable "pause_timer"
@onready var day_text = $Day # Day text is stored in the variable "day_text"

@onready var change_date_func_not_called = true
@onready var day = manager.days_passed # "Day" variable stores how many days have passed ingame

func change_date(): # For each day that a new group of posters is submitted, the day text is updated, after the last day, the sorting_ending function is run.
	if day == 0:
		day_text.text = "Day 1"
		
	elif day == 1:
		day_text.text = "Day 2"
		
	elif day == 2:
		day_text.text = "Day 3"
		
	elif day == 3:
		day_text.text = "Day 4"
		
	elif day == 4:
		day_text.text = "Day 5"
	
	elif day == 5:
		sorting_ending()
		
func _ready() -> void: # Whenever this scene plays, run the change_date function and reset "posters_submitted" to 0 
	change_date()
	manager.posters_submitted = 0

func sorting_ending(): # If the public's reputation is higher than the corporation's reputation, play he revolution ending
	if manager.public_rep > manager.corporation_rep:
		get_tree().change_scene_to_file("res://scenes/revolution_ending.tscn")
	else: # Vice versa for if the corporation has a higher reputation
		get_tree().change_scene_to_file("res://scenes/corporation_ending.tscn")

func _on_pause_timeout() -> void: # When the timer in this scene has reached 4 seconds, move on to the next day's work
		get_tree().change_scene_to_file("res://scenes/main.tscn")
