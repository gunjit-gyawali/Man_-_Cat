extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		if GameController.total_coins >= 9:
			EventController.emit_signal("level_completed")
			get_tree().change_scene_to_file("res://scenes/comming_soon.tscn")
		else:
			print("You need to collect all 32 cherry!")
