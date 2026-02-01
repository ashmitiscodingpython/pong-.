extends TextureRect

@onready var player = $"../PaddlePlayer"
@onready var ball = $"../Ball"
@export var parallax = 2.0
var parallaxed

func _process(_delta: float) -> void:
	parallaxed = Vector2(ball.position.x / 306 / parallax + (1 / parallax), ball.position.y / 306 / parallax + (1 / parallax))
	position = -39 * parallaxed
