extends Button

@onready var infoScreen = get_parent().get_parent().get_parent().get_node("VBoxContainer/Control2")

func _pressed():
	get_tree().change_scene_to_file("res://scenes/mainmenu.tscn")
