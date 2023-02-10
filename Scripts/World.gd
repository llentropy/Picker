extends Spatial

var ray_length = 1000
func _unhandled_input(event):
	if event is InputEventMouseButton:
		var camera = $Camera
		var from = camera.project_ray_origin(event.position)
		var to = from + camera.project_ray_normal(event.position) * ray_length
		var space_state = get_world().direct_space_state
		var result = space_state.intersect_ray(from, to)
		print(from, to)
		print(result)
		
