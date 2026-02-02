extends RigidBody2D


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _on_body_entered(body: Node) -> void:
	if body in get_tree().get_nodes_in_group("Paddles"):
		linear_velocity.y += body.velocity * 50
