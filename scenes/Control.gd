extends Control

func _ready():
	connect("mouse_entered", self, "_on_Control_mouse_entered")
	connect("mouse_exited", self, "_on_Control_mouse_exited")

func _on_Control_mouse_entered():
	print("Mouse entered Control!")

func _on_Control_mouse_exited():
	print("Mouse exited Control.")
