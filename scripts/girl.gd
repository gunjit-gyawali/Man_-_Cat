extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -500.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * 1.3 * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	var direction := Input.get_axis("ui_left", "ui_right")
	if direction > 0:
		$AnimatedSprite2D.play("walk")
		$AnimatedSprite2D.flip_h = false
		velocity.x = direction * SPEED
		
		
	elif direction < 0:
		$AnimatedSprite2D.play("walk")	
		$AnimatedSprite2D.flip_h = true
		
		velocity.x = direction * SPEED
		
	else:
		$AnimatedSprite2D.play("idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	move_and_slide()
