extends Button
@onready var button_sound: AudioStreamPlayer = $button_sound


func _on_pressed():
	button_sound.play()
	OS.delay_msec(75)
	get_tree().change_scene_to_file("res://book2.tscn")
