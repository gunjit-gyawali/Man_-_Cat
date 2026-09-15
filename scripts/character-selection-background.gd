extends Sprite2D

@export var speed: float = 20.0
@export var distance: float = 200.0

var start_x: float
var direction: float = 1.0

func _ready():
	start_x = position.x

func _process(delta):
	position.x += speed * direction * delta

	if position.x >= start_x + distance:
		position.x = start_x + distance
		direction = -1.0

	elif position.x <= start_x:
		position.x = start_x
		direction = 1.0
