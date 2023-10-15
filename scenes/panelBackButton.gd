extends Button

@onready var infoScreen = get_parent().get_parent().get_parent().get_parent()

func _pressed():
	infoScreen.state = 0
