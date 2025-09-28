extends Area2D

@onready var button = $homearea2d

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Boy":
		$home.text = "Click to \n Enter!" 
	
