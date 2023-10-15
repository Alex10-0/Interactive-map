extends Control

var entrance = preload("res://images/campus/entrance.jpg")
var gates = preload("res://images/campus/gates.jpg")
var reception = preload("res://images/campus/reception.jpg")
var infoCentre = preload("res://images/campus/infoCentre.jpg")
var state = 0
var selectedImage = entrance
@onready var image = get_node("campusImage")
@onready var description = get_node("NinePatchRect/description")
@onready var placeName = get_node("NinePatchRect/name")

func _process(delta):
	if state == 0:
		visible = false
	elif state == 1:
		visible =  true
	image.texture = selectedImage
	
	match selectedImage:
		entrance:
			description.bbcode_text = "[center]The entrance to the college, this is the main way to access the building."
			placeName.bbcode_text = "[center]Entrance"
		gates:
			description.bbcode_text = "The gates leading to the inside of the college, a landyard is required to do so, if your landyard is lost or forgotten for the day a temporary one is available at the reception."
			placeName.bbcode_text = "Gates"
		infoCentre:
			description.bbcode_text = "balls"
			placeName.bbcode_text = "Gates"
		reception:
			description.bbcode_text = "The reception of BSDC, here you can ask questions to the receptioners and they will attempt to guide you accordingly."
			placeName.bbcode_text = "Gates"

func _input(event):
	if event.is_action_pressed("appear"):
		selectedImage = infoCentre
