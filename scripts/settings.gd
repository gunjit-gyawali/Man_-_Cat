extends Node2D


func _on_full_screen_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world/main_menu.tscn")
