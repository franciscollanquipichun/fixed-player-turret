extends Area2D

@export var Bullet : PackedScene

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		shoot()

func shoot():
	var b = Bullet.instantiate()
	get_tree().root.add_child(b)
	b.transform = $Marker2D.global_transform
