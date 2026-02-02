extends RigidBody2D

var velocity = 0
@onready var ball = $"../Ball"
var target

func _process(_delta: float) -> void:
	velocity = ball.position.y - position.y
	position.y = ball.position.y
	
