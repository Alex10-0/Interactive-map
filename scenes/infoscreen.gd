extends Control

var state = 0

func _process(delta):
	if state == 0:
		visible = false
	elif state == 1:
		visible =  true

func _input(event):
	if event.is_action_pressed("appear"):
		state = 1 - state
