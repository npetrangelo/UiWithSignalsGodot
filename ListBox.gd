extends Control

signal add(count: int)
signal subtract(count: int)

var list = ["Foo"]

@onready var label = $VBoxContainer/RichTextLabel
@onready var input = $VBoxContainer/HFlowContainer/LineEdit

func render_list():
	label.text = "\n".join(list)


func _on_submit_pressed():
	print("Submit button pressed")
	list.append(input.text)
	render_list()
	add.emit(list.size())

func _on_remove_pressed():
	list.pop_back()
	render_list() # Replace with function body.
	subtract.emit(list.size())
