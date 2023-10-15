extends CollisionShape2D

func _ready():
	connect("mouse_entered", self, "_on_Area2D_mouse_entered")
	connect("mouse_exited", self, "_on_Area2D_mouse_exited")

func _on_Area2D_mouse_entered():
	print("Mouse entered Area2D!")

func _on_Area2D_mouse_exited():
	print("Mouse exited Area2D.")
