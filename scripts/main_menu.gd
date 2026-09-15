extends Node2D


func _on_start_pressed() -> void:
	Transtion.change_scene("res://scenes/world/vid.tscn")
	


func _on_settingss_pressed() -> void:
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	get_tree().quit()
