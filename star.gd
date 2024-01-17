
extends Area2D

signal collected

var star_value = 1  # The value of the star in terms of score

var touch_duration = 0.5  # Duration before the star is considered collected

func _on_Star_body_entered(body):  # Adjust the function to match your signal connection
	if body.is_in_group("player"):  # Check if the collided body is the player
		GameState.add_score(star_value)  # Increase the player's score
		queue_free()  # Optionally remove the star after collection


func _ready():
	# Access the Timer node and configure it
	var touch_timer = $TouchTimer  # Adjust the path if your Timer node is named differently or deeper in the hierarchy
	touch_timer.wait_time = touch_duration
	# Schedule the connection to be made after the current call stack is cleared
	call_deferred("deferred_connect", touch_timer)
	
	
	
func _process(delta):
	var has_overlap = false
	var touch_timer = $TouchTimer  # Access the Timer node

	# Check for overlap with player
	for body in get_overlapping_bodies():
		if body.is_in_group("player"):
			has_overlap = true
			break

	# Start or stop the timer based on conditions
	if has_overlap and self.visible:
		if touch_timer.is_stopped():
			touch_timer.start()
	else:
		if !touch_timer.is_stopped():
			touch_timer.stop()

func _on_Touch_timer_timeout():
	# When the timer times out, emit the collected signal and queue_free
	emit_signal("collected")
	self.queue_free()

