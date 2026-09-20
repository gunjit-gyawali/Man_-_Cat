extends Control

@onready var label = $Label

func _ready():
	EventController.connect("coin_collected", _on_event_coin_collected)
	
func _on_event_coin_collected(value: int) -> void:
	label.text = str(value)
