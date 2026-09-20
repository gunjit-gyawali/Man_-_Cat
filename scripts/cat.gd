extends CharacterBody2D


const SPEED = 500.0
const JUMP_VELOCITY = -600.0

@export var start_position = Vector2(3000,100)


@onready var animated_sprite = $AnimatedSprite2D
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta


	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		animated_sprite.play("jump")
		
	var direction := Input.get_axis("left", "right")
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
		
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("Cat_idle")
		else:
			animated_sprite.play("cat_walk")
	else:
		animated_sprite.play('Cat_idle')


	if position.y > 5000:
		position = start_position
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
