extends Node2D

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("retry"):
		get_tree().change_scene("res://Levels/Level1.tscn")
