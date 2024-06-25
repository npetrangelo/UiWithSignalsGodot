extends Control

var count1 = 1
var count2 = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	var left = $VBoxContainer/HBoxContainer/Left/VBoxContainer/RichTextLabel
	var right = $VBoxContainer/HBoxContainer/Right/VBoxContainer/RichTextLabel
	left.text = "Foo"
	right.text = "Bar"
	
func render_stats():
	$VBoxContainer/Count1.text = "Count 1: " + str(count1)
	$VBoxContainer/Count2.text = "Count 2: " + str(count2)
	$VBoxContainer/Total.text = "Total: " + str(count1 + count2)

func _on_left_add(count: int):
	count1 = count
	render_stats()

func _on_right_add(count):
	count2 = count
	render_stats()

func _on_left_subtract(count):
	count1 = count
	render_stats()

func _on_right_subtract(count):
	count2 = count
	render_stats()
