extends RigidBody2D

@onready var game = %GameManager
var velocity = 0

func _ready() -> void:
	pass # Replace with function body.

func _process(_delta: float) -> void:
	if Input.is_action_pressed("Up"):
		velocity -= 1
	elif Input.is_action_pressed("Down"):
		velocity += 1
	position.y += velocity
	velocity *= 0.8
	
