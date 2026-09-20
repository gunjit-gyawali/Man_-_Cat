extends CollisionShape2D


func _on_killzone_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		call_deferred("_reload_scene")


func _reload_scene() -> void:
	get_tree().reload_current_scene()
