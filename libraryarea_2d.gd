extends Area2D

@onready var button = $libraryarea2d

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Boy":
		$library.text = "Click to \n Enter!"
	
