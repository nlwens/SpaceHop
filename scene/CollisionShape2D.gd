extends CollisionShape2D


# Called when the node enters the scene tree for the first time.

@onready var collision_shape: CollisionShape2D = $CollisionShape2D

func _ready():
	# 使用属性
	int collision_shape.collision_layer = 0
	int collision_shape.collision_mask = 0
