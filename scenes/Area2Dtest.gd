extends Area2D

var hovering = false
var a = 0
func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		a = a + 0.01
		print("balls")

func _process(delta):
	a = clamp(0, a, 1)
	print(a)

