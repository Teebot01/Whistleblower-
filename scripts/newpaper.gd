extends Panel
		
func _process(_delta): # When the poster is opened, if the user presses the key associated with the action "exit_newspaper" (the escape key), close the newspaper
	if self.visible == true and Input.is_action_pressed("exit_newspaper"):
		self.visible = false

func _on_news_button_pressed() -> void: # if the newspaper button is pressed, open the newspaper
	self.visible = true
