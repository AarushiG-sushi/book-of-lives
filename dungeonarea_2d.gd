extends Area2D


@onready var button = $dungeonarea2d

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Boy":
		$dungeon.text = "Click to \n Enter!" 
	
	
