extends Area2D

func _on_body_entered(body):
	if body.is_in_group('player'):
		queue_free()
		Global.score += 10
	pass
