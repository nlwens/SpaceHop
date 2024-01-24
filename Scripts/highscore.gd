extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.text = "Your score is: " + str(Global.highscore) + "\n" + "Your high score is: " + str(Global.highrecord)
	
	if Global.highrecord < Global.highscore:
		Global.highrecord = Global.highscore
	pass
