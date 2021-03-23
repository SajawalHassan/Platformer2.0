extends Node2D

var jump_boost_power = Vector2()

func _physics_process(delta) -> void:
	if Input.is_action_just_pressed("jump"):
		jump_boost_power.y = -500

func _on_JumpBooster_body_entered(body: Node) -> void:
	jump_boost_power.y = -1000
