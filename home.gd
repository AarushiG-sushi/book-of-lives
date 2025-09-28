extends Button

@onready var button_sound: AudioStreamPlayer = $"../../../stararea2d/Button/button_sound"

func _on_pressed():
	button_sound.play()
	OS.delay_msec(75)
	get_tree().change_scene_to_file("res://main.tscn")
