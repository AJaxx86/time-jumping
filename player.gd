class_name Player extends CharacterBody2D

@export var speed: float = 150.0


func _physics_process(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()


func _on_interact_zone_body_entered(body: Node2D) -> void:
	if body is Player:
		return

	print(body)
