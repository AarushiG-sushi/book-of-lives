extends Area2D

@onready var button = $buttonarea2d

func _on_body_entered(body: Node) -> void:
	if body.name == "Boy":
		$book.text = "Click to \n Discover!" 
	
