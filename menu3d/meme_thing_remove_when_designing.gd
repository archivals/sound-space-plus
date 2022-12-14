extends WorldEnvironment

var angle = 0
var true_direction = Vector3.ZERO

func _process(delta):
	true_direction = Vector3(angle * 1.17356641, angle * 0.90533273, angle)
	environment.background_sky_rotation_degrees = true_direction
	angle += 0.005 / delta
