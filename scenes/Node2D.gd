extends Node2D

var hovering:bool = false
var transparency:float = 0
var moving:bool = false
var backTimer:float = 0
var clickTimer:float = 0
var clicking = false
var canExit = false
@onready var infoScreen = get_parent().get_parent().get_node("CanvasLayer/VBoxContainer/Control2")

func _ready():
	modulate.a = 0

func _process(delta):
	
	
	clickTimer = clamp(0, clickTimer, 1)
	transparency = clamp(0.05, transparency, 1)
	backTimer = clamp(0, backTimer, 1)
	modulate.a = transparency
	
	
	if hovering == true:
		transparency += 2.5 * delta
	else:
		transparency -= 2.5 * delta
	
	if infoScreen.state == 0:
		
		backTimer -= 15 * delta
		
		if backTimer <= 0:
			canExit = true
	else:
		backTimer = 1
		canExit = false
	
	if CheckInput.relative == Vector2.ZERO:
		
		clickTimer -= 10 * delta
		
		if clickTimer <= 0:
			moving = false
	else:
		clickTimer = 1
		moving = true
	
	
	if Input.is_action_pressed("click") and hovering == true:
		clicking = true
	else:
		clicking = false
	
	
	if  Input.is_action_just_released("click") and hovering == true and moving == false and canExit == true:
		if get_name() == "stairsToF1":
			get_tree().change_scene_to_file("res://scenes/floor1.tscn")
		if get_name() == "stairsToG":
			get_tree().change_scene_to_file("res://scenes/map.tscn")
		else:
			infoScreen.state = 1
			infoScreen.selectedImage = infoScreen.get(get_name())

func _on_area_2d_mouse_entered():
	hovering = true


func _on_area_2d_mouse_exited():
	hovering = false
