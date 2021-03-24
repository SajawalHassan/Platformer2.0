extends KinematicBody2D

const UP = Vector2(0, -1)

var motion = Vector2()
var jump_count = 0

func _physics_process(delta) -> void:
	motion.y += 20
	
	if Input.is_action_pressed("move_right"):
		motion.x = 400
		
	elif Input.is_action_pressed("move_left"):
		motion.x = -400
		
	else:
		motion.x = 0
		
	if Input.is_action_just_pressed("jump"):
		if jump_count < 1:
			jump_count += 1
			motion.y = -550

	if is_on_floor():
		jump_count = 0
		
	motion = move_and_slide(motion, UP)

func _on_Death_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Gameplay/GameOver.tscn")


func _on_Teleportal_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Levels/Level2.tscn")


func _on_RetryDetector_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Gameplay/GameOver.tscn")


func _on_GroundDeath_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Gameplay/GameOver.tscn")


func _on_TeleportalEnd_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Levels/Level3.tscn")

func _on_GroundDeath2_body_entered(body: Node) -> void:
	pass # Replace with function body.


func _on_GroundDeath3_body_entered(body: Node) -> void:
	pass # Replace with function body.

