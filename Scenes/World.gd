extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Miners/Miner.position.x = $City.position.x
	$Miners/Miner.position.y = $City.position.y

	$Miners/Miner.attach($City)
