extends Node
class_name MouseInput

var relative : Vector2
var scrollFwd : int
var scrollBck : int

var lastFrame : float
var lastMouseMove : float
var lastScrollF : float
var lastScrollB : float

func _process(delta):
	
	if lastMouseMove < lastFrame:
		relative = Vector2.ZERO
	
	if lastScrollF < lastFrame:
		scrollFwd = 0;
	
	if lastScrollB < lastFrame:
		scrollBck = 0
	
	lastFrame += delta

func _input(event):
	if event is InputEventMouseMotion:
		lastMouseMove = lastFrame
		relative = event.relative
	elif event is InputEventMouseButton:
		if event.button_index == 4:
			lastScrollF = lastFrame
			scrollFwd = 1
		elif event.button_index == 5:
			lastScrollB = lastFrame
			scrollBck = 1 #14/10/23 - todo: comment this shit
			#17/10/23 - what the fuck does this do lmao
