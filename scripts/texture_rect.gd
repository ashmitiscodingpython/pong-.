extends TextureRect

@onready var player = $"../PaddlePlayer"
@onready var ball = $"../Ball"
@export var parallax = 50.0
var parallaxed

func _process(_delta: float) -> void:
	parallaxed = Vector2(ball.position.x / 576 / parallax, ball.position.y / 324 / parallax)
	position = Vector2(-891, -477) * parallaxed
