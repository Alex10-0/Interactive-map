extends Camera2D
class_name MainCamera

var _previousPosition: Vector2 = Vector2(0, 0);
var _moveCamera: bool = false;

func _process(delta):
	#print("gaming" , _previousPosition)
	#print(position)
	pass

func _unhandled_input(event: InputEvent):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			_previousPosition = event.position;
			_moveCamera = true;
		else:
			_moveCamera = false;
	if event is InputEventMouseMotion and _moveCamera == true:
		position += (_previousPosition - event.position);
		_previousPosition = event.position;
