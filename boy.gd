extends CharacterBody2D

#@onready var boy: CharacterBody2D = $"."

@onready var anim = $AnimatedSprite2D

	
const SPEED = 300.0
const VSPEED = 267.0

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	var vertical := Input.get_axis("up", "down")
	if vertical:
		velocity.y = vertical * VSPEED
		#if (vertical == -1) :
			#anim.play("up")
		#else:
			#anim.play("down")
	else:
		velocity.y = move_toward(velocity.y, 0, VSPEED)
		#anim.play("idle")
		
	if direction:
		velocity.x = direction * SPEED
		#if (direction == -1) :
			#anim.play("left")
		#else:
			#anim.play("right")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		#anim.play("idle")
	move_and_slide()
