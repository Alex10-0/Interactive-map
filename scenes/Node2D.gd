extends Node2D

var hovering:bool = false
var transparency:float = 0
var moving:bool = false
var clickTimer:float = 0
var clicking = false
@onready var infoScreen = get_parent().get_parent().get_node("CanvasLayer/VBoxContainer/Control2")

func _process(delta):
	
	
	clickTimer = clamp(0, clickTimer, 1)
	transparency = clamp(0, transparency, 1)
	modulate.a = transparency
	
	
	if hovering == true:
		transparency += 2.5 * delta
	else:
		transparency -= 2.5 * delta
	
	
	if CheckInput.relative == Vector2.ZERO:
		
		clickTimer -= 15 * delta
		
		if clickTimer <= 0:
			moving = false
	else:
		clickTimer = 1
		moving = true
	
	
	if Input.is_action_pressed("click") and hovering == true:
		clicking = true
	else:
		clicking = false
	
	
	if  Input.is_action_just_released("click") and hovering == true and moving == false:
		infoScreen.state = 1
		infoScreen.selectedImage = infoScreen.get(get_name())

func _on_area_2d_mouse_entered():
	print("balls")
	hovering = true


func _on_area_2d_mouse_exited():
	print("WHAT")
	hovering = false
