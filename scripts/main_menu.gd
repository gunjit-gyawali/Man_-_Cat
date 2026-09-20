extends Node2D


func _on_start_pressed() -> void:
	Transtion.change_scene("res://scenes/world/vid.tscn")
	


func _on_settingss_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world/settings.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
