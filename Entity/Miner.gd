extends KinematicBody2D


var city: Node2D
var angular_speed: float = -180  # degree/s
var current_angle: float = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _process(delta: float) -> void:

	if city:
		# Set new angle
		var delta_angular_speed = deg2rad(angular_speed * delta)
		current_angle += delta_angular_speed
		# Avoid the angle to increase too much
		if current_angle > 2 * PI:
			current_angle -= 2 * PI
		elif current_angle < 2 * PI:
			current_angle += 2 * PI
		# Update position and rotation
		position.x = city.position.x + city.radius * cos(current_angle)
		position.y = city.position.y + city.radius * sin(current_angle)
		rotation_degrees = rad2deg(current_angle)

# Methods

func attach(node: Node2D):
	city = node

