extends Button
@onready var button_sound: AudioStreamPlayer = $button_sound

func _on_pressed() -> void:
	button_sound.play()
	get_tree().change_scene_to_file("res://final.tscn")
