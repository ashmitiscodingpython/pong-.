extends RigidBody2D

var velocity
@onready var pivot = $Pivot

func _ready() -> void:
	linear_velocity = [Vector2(-200, 200), Vector2(200, 200), Vector2(200, -200), Vector2(-200, -200)][randi_range(0, 3)]

func _process(_delta: float) -> void:
	pivot.rotation_degrees += ((rad_to_deg(atan2(linear_velocity.y, linear_velocity.x)) + 90) - pivot.rotation_degrees) / 5

func _on_body_entered(_body: Node) -> void:
	pass
