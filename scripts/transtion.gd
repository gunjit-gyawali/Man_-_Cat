extends CanvasLayer

signal on_transition_finished

@onready var color_rect = $ColorRect
@onready var animation_player = $AnimationPlayer

var next_scene: String = ""

func _ready():
	color_rect.visible = false
	animation_player.animation_finished.connect(_on_animation_finished)


func _on_animation_finished(anim_name):
	if anim_name == "Fade_to_black":
		if next_scene != "":
			get_tree().change_scene_to_file(next_scene)
			next_scene = ""

		animation_player.play("fade_to_normal")

	elif anim_name == "fade_to_normal":
		color_rect.visible = false


func change_scene(scene_path: String):
	next_scene = scene_path
	color_rect.visible = true
	animation_player.play("Fade_to_black")
