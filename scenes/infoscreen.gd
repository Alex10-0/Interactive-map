extends Control

var entrance = preload("res://images/campus/entrance.jpg")
var gates = preload("res://images/campus/gates.jpg")
var reception = preload("res://images/campus/reception.jpg")
var infoCentre = preload("res://images/campus/infoCentre.jpg")
var f1_classroom_1 = preload("res://images/campus/balls.jpg")
var secret = preload("res://images/a.png")
var state = 0
var selectedImage = entrance
var beginningHideTimer: float = 1
@onready var image = get_node("campusImage")
@onready var description = get_node("NinePatchRect/description")
@onready var placeName = get_node("NinePatchRect/name")
@onready var button = get_node("NinePatchRect/MarginContainer2/VBoxContainer/Button")

func _ready():
	visible = false

func _process(delta):
	
	# ------------------------------------
	
	if beginningHideTimer >= 0:
		beginningHideTimer -= 1 * delta
	
	if beginningHideTimer >= 0:
		state = 0
	
	# code accounting for lag in the beginning,
	# makes it so the screen cannot display when the scene is first initiated which makes
	# unwanted pop ups impossible.
	
	if state == 0:
		visible = false
	elif state == 1:
		visible =  true
	image.texture = selectedImage
	
	
	match selectedImage:
		#GROUND FLOOR ------------------------------------------------------------
		entrance:
			description.bbcode_text = "[center]The entrance to the college, this is the main way to access the building."
			placeName.bbcode_text = "[center]Entrance"
		gates:
			description.bbcode_text = "The gates leading to the inside of the college, a landyard is required to do so, if your landyard is lost or forgotten for the day a temporary one is available at the reception."
			placeName.bbcode_text = "Gates"
		infoCentre:
			description.bbcode_text = "The info centre is the place to go to make inquries about anything, you can get help with any college related issue plus financial support and mental support is managed here."
			placeName.bbcode_text = "Info Centre"
		reception:
			description.bbcode_text = "The reception of BSDC, here you can ask questions to the receptioners and they will attempt to guide you accordingly."
			placeName.bbcode_text = "Gates"
		#FLOOR 1 -----------------------------------------------------------------
		f1_classroom_1:
			description.bbcode_text = "test"
			placeName.bbcode_text = "balls"
	
	# depending on the name of the selectable nodes, corresponding text will change on the infoPanel.
