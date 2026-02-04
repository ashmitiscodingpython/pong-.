extends TextureRect

@onready var player = $"../PaddlePlayer"
@onready var ball = $"../Ball"
@export var parallax = 2.5
var parallaxed
var normal

func _ready() -> void:
	parallax = float(parallax)
	normal = position

func _process(_delta: float) -> void:
	parallaxed = Vector2(((ball.position.x / 576) + 1) / parallax, (ball.position.y / 324) / parallax)
	position = Vector2(normal.x * parallaxed.x, normal.y * parallaxed.y)
