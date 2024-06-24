extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var left = $VBoxContainer/HBoxContainer/Left/VBoxContainer/RichTextLabel
	var right = $VBoxContainer/HBoxContainer/Right/VBoxContainer/RichTextLabel
	left.text = "Foo"
	right.text = "Bar"

	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
