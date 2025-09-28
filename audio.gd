extends AudioStreamPlayer

const level_music = preload("res://graphics/sunrise-114326.mp3")

func _play_music(music, volume = 0.0):
	if stream == music:
		return
		
	stream = music 
	volume.db = volume
	play()

func play_music_level():
	_play_music(level_music)
