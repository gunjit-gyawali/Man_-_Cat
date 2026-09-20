extends Node2D

func _on_alice_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/man's/man_1_st_world.tscn")


func _on_ruby_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/cat's/cat_world_1.tscn")
