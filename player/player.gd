extends CharacterBody2D

const ROTATION_SPEED = 3.0

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		if (direction == 1 && rotation_degrees < 90) || (direction == -1 && rotation_degrees > -90): 
			rotation_degrees += direction * ROTATION_SPEED
