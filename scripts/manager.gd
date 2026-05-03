extends Node2D

var current_day = 0 # Day

var days_passed = 0 # Keeps track of every day that has passed

# Console variables
var posters_submitted = 0 # The posters that have been submitted for this day

# Reputation score
var public_rep = 0 # The public's current reputation
var corporation_rep = 0 # The corporation's current reputation

func update_poster_groups_submitted():
	var message_not_printed = true # Controls how many times the debugger prints the "3 posters submitted" message
	if posters_submitted == 3 and message_not_printed: # If 3 posters have been submitted, display the message in the debugger once, and days_passed += 1
		print("3 posters submitted")
		days_passed += 1
		message_not_printed = false
		print("Poster groups submitted: " + str(days_passed))
