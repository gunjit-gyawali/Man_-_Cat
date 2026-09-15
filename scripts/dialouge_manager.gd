extends CanvasLayer

@onready var dialouge_box: Control = $"dialouge box"
@onready var dialouge_text: Label = $"dialouge box/Dialouge_Text"

var dialouge_lines: Array[String] = []
var current_line_index: int = 0
var is_dailouge_active: bool = false


func _ready() -> void:
	dialouge_box.visible = false
	
	start_dialouge([
	"Alice (Girl) : Ruby, it's harvest season.",
	"Ruby (Cat) : Meow! Finally!",
	"Alice (Girl) : We should check the crops.",
	"Ruby (Cat) : Both fields?",
	"Alice (Girl) : Yes. Both of them.",
	"Ruby (Cat) : But they are opposite sides.",
	"Alice (Girl) : I know.",
	"Ruby (Cat) : Then we should split up.",
	"Alice (Girl) : That's a good idea.",
	"Ruby (Cat) : I'll check the east field.",
	"Alice (Girl) : Then I'll check the west field.",
	"Ruby (Cat) : Let's meet after.",
	"Alice (Girl) : Near the big tree.",
	"Ruby (Cat) : The tree beside the fields?",
	"Alice (Girl) : Yes. That one.",
	"Ruby (Cat) : Got it!",
	"Alice (Girl) : Check the crops carefully.",
	"Ruby (Cat) : I will.",
	"Alice (Girl) : See you there, Ruby.",
	"Ruby (Cat) : Meow! See you soon!",
	"They both go towards the fields!"
	])


func start_dialouge(lines: Array[String]) -> void:
	get_tree().paused = true
	dialouge_lines = lines
	current_line_index = 0
	is_dailouge_active = true
	dialouge_box.visible = true
	dialouge_text.text = dialouge_lines[current_line_index]


func _input(event: InputEvent) -> void:
	if not is_dailouge_active:
		return

	if event.is_action_pressed("ui_accept"):
		advance_dialouge()


func advance_dialouge() -> void:
	if current_line_index < dialouge_lines.size() - 1:
		current_line_index += 1
		dialouge_text.text = dialouge_lines[current_line_index]
	else:
		get_tree().paused = false
		is_dailouge_active = false
		dialouge_box.visible = false
		get_tree().change_scene_to_file("res://scenes/character_selection.tscn")
