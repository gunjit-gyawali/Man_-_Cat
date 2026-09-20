extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		call_deferred("_change_scene")

func _change_scene() -> void:
	get_tree().reload_current_scene()


func _on_plants_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		call_deferred("_change_scene")
