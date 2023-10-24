extends Control

var classroomSentence1 = "a row of classrooms on the first floor, not always used for traditional classes as they are sometimes specialized for different uses, for example there may be computers around the classroom, for computing, there may be science equipment, etc..."
var classroomSentence2 = "a row of classrooms on the second floor, not always used for traditional classes as they are sometimes specialized for different uses, for example there may be computers around the classroom, for computing, there may be science equipment, etc..."
var classroomSentence3 = "a row of classrooms on the third floor, not always used for traditional classes as they are sometimes specialized for different uses, for example there may be computers around the classroom, for computing, there may be science equipment, etc..."
var classroomSentence4 = "a row of classrooms on the forth floor, not always used for traditional classes as they are sometimes specialized for different uses, for example there may be computers around the classroom, for computing, there may be science equipment, etc..."
# generic ---------------------------------------------------
var bathroom = preload("res://images/campus/bathroom.jpg")
# ground floor ----------------------------------------------
var entrance = preload("res://images/campus/entrance.jpg")
var gates = preload("res://images/campus/gates.jpg")
var reception = preload("res://images/campus/reception.jpg")
var infoCentre = preload("res://images/campus/infoCentre.jpg")
var firstAid = preload("res://images/campus/firstAid.jpg")
var theatre = preload ("res://images/campus/theatre.jpg")
# floor 1 ----------------------------------------------------
var f1_classroom_1_up = preload("res://images/campus/f1_classroom_1_up.jpg")
var f1_classroom_1_down = preload("res://images/campus/f1_classroom_1_down.jpg")
var f1_classroom_2_up = preload("res://images/campus/f1_classroom_2_down.jpg")
var f1_classroom_2_down = preload("res://images/campus/f1_classroom_2_up.jpg")
var cafe = preload("res://images/campus/cafe.jpg")
var libraryf1 = preload("res://images/campus/libraryf1.jpg")
# floor 2 ----------------------------------------------------
var libraryf2 = preload("res://images/campus/baller.jpg")
var f2_classroom_1_up = preload("res://images/campus/f2_classroom_1_up.jpg")
var f2_classroom_1_down = preload("res://images/campus/f2_classroom_1_down.jpg")
var f2_classroom_2_down = preload("res://images/campus/f2_classroom_2_up.jpg")
var f2_classroom_2_up = preload("res://images/campus/f2_classroom_2_down.jpg")
var f2_classroom_3_up = preload("res://images/campus/f2_classroom_3_up.jpg")
var f2_classroom_3_down = preload("res://images/campus/f2_classroom_3_down.jpg")
# floor 3 ----------------------------------------------------
var f3_classroom_1_up = preload("res://images/campus/f3_classroom_1_up.jpg")
var f3_classroom_1_down = preload("res://images/campus/f3_classroom_1_down.jpg")
var f3_classroom_2_up = preload("res://images/campus/f3_classroom_2_up.jpg")
var f3_classroom_2_down = preload("res://images/campus/f3_classroom_2_down.jpg")
var f3_classroom_3_up = preload("res://images/campus/f3_classroom_3_up.jpg")
var f3_classroom_3_down = preload("res://images/campus/f3_classroom_3_down.jpg")
# floor 4 ----------------------------------------------------
var f4_classroom_1_up = preload("res://images/campus/f4_classroom_1_up.jpg")
var f4_classroom_1_down = preload("res://images/campus/f4_classroom_1_down.jpg")
var f4_classroom_2_up = preload("res://images/campus/f4_classroom_2_up.jpg")
var f4_classroom_2_down = preload("res://images/campus/f4_classroom_2_down.jpg")
var f4_classroom_3_up = preload("res://images/campus/f4_classroom_3_up.jpg")
var f4_classroom_3_down = preload("res://images/campus/f4_classroom_3_down.jpg")
# ------------------------------------------------------------
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
		#GENERIC -----------------------------------------------------------------
		bathroom:
			description.bbcode_text = "WHAT????????"
			placeName.bbcode_text = "Bathroom"
		#GROUND FLOOR ------------------------------------------------------------
		entrance:
			description.bbcode_text = "[center]The entrance to the college, this is the main way to access the building."
			placeName.bbcode_text = "[center]Entrance"
		gates:
			description.bbcode_text = "The gates leading to the inside of the college, a landyard is required to do so, if your landyard is lost or forgotten for the day a temporary one is available at the reception."
			placeName.bbcode_text = "Gates"
		infoCentre:
			description.bbcode_text = "The info centre is the place to go to make inquries about anything, you can get help with any college related issue plus financial support and mental support is managed here."
			placeName.bbcode_text = "Info_Centre"
		reception:
			description.bbcode_text = "The reception of BSDC, here you can ask questions to the receptioners and they will attempt to guide you accordingly."
			placeName.bbcode_text = "Gates"
		theatre:
			description.bbcode_text = "The theatre, usually used to give lessons in which the number of students exceed the maximum capacity of a regular classroom, therefore requiring a larger space."
			placeName.bbcode_text = "theatre"
		firstAid:
			description.bbcode_text = "The medical room is an open space where you can go whenever you need assistance. "
			placeName.bbcode_text = "first_Aid"
		#FLOOR 1 -----------------------------------------------------------------
		f1_classroom_1_up:
			description.bbcode_text = classroomSentence1
			placeName.bbcode_text = "f1_classroom_1_up"
		f1_classroom_1_down:
			description.bbcode_text = classroomSentence1
			placeName.bbcode_text = "f1_classroom_1_down"
		f1_classroom_2_up:
			description.bbcode_text = classroomSentence1
			placeName.bbcode_text = "f1_classroom_2_up"
		f1_classroom_2_down:
			description.bbcode_text = classroomSentence1
			placeName.bbcode_text = "f1_classroom_2_down"
		cafe:
			description.bbcode_text = "The mulberry café is hosted by our own chef students here at the college, every day you will find a variety of meals."
			placeName.bbcode_text = "cafe"
		libraryf1:
			description.bbcode_text = "fuck me"
			placeName.bbcode_text = "library_f1"
		#FLOOR 2 -----------------------------------------------------------------
		f2_classroom_1_up:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_1_up"
		f2_classroom_1_down:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_1_down"
		f2_classroom_2_up:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_2_up"
		f2_classroom_2_down:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_2_down"
		f2_classroom_3_up:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_3_up"
		f2_classroom_3_down:
			description.bbcode_text = classroomSentence2
			placeName.bbcode_text = "f2_classroom_3_down"
		libraryf2:
			description.bbcode_text = "On the first floor of the LRC you will find a library filled with all sorts of books ranging from educational to fictional. Computers and general seating can be found all over."
			placeName.bbcode_text = "library_f2"
		#FLOOR 3 -----------------------------------------------------------------
		f3_classroom_1_up:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_1_up"
		f3_classroom_1_down:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_1_down"
		f3_classroom_2_up:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_2_up"
		f3_classroom_2_down:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_2_down"
		f3_classroom_3_up:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_3_up"
		f3_classroom_3_down:
			description.bbcode_text = classroomSentence3
			placeName.bbcode_text = "f3_classroom_3_down"
		#FLOOR 4 -----------------------------------------------------------------
		f4_classroom_1_up:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_1_up"
		f4_classroom_1_down:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_1_down"
		f4_classroom_2_up:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_2_up"
		f4_classroom_2_down:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_2_down"
		f4_classroom_3_up:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_3_up"
		f4_classroom_3_down:
			description.bbcode_text = classroomSentence4
			placeName.bbcode_text = "f4_classroom_3_down"




	
	# depending on the name of the selectable nodes, corresponding text will change on the infoPanel.
