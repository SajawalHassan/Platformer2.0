extends Node2D




func _on_TeleportalEnd_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Levels/Level3.tscn")
