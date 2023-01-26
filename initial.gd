extends Node2D

var clicks = 0
var addclicks = 1
var cost1 = 10
var cost2 = 100
var cost3 = 1000
var cost4 = 10000
var cost5 = 10000
var passiveTick = 1 ##passiveTick and tickTimer are used for passive generation of clicks.
var tickTimer = 0

func _ready():
	$CanvasLayer/clicklabel.text = str(clicks)

func _process(delta): ## process is a function called each frame, and delta is a number of seconds between frames, usually a sub-1 decimal.
	tickTimer += delta ## tickTimer increments each frame by delta until it reaches the threshold in the if statement, then adds the passive generation amount and resets.
	if(tickTimer > 1): ## This means the player passively generates 1 click per second, you can tweak how much it generates by changing passiveTick.
		clicks += passiveTick ##You can also change the number tickTimer is comparing against in the if statement, i.e .5 would make it generate every half second.
		tickTimer = 0
		$CanvasLayer/clicklabel.text = str(clicks)

func _on_clicker_pressed() -> void:
	clicks += addclicks
	$CanvasLayer/clicklabel.text = str(clicks)


func _on_MenuButton_pressed() -> void:
	get_tree().change_scene("res://src/menu.tscn")
	



func _on_item1_pressed() -> void:
	if clicks >= cost1:
		addclicks +=5
		$CanvasLayer/item1.queue_free()
		$CanvasLayer/item1desc.hide()
	pass

func _on_item2_pressed() -> void:
	if clicks >= cost2:
		addclicks +=25
		$CanvasLayer/item2.queue_free()
		$CanvasLayer/item2desc.hide()
	pass

func _on_item3_pressed() -> void:
	if clicks >= cost3:
		addclicks +=100	
		$CanvasLayer/item3.queue_free()
		$CanvasLayer/item3desc.hide()
	pass

func _on_item4_pressed() -> void:
	if clicks >= cost4:
		addclicks +=500
		$CanvasLayer/item4.queue_free()
		$CanvasLayer/item4desc.hide()
	pass

func _on_item5_pressed() -> void:
	if clicks >= cost5:
		addclicks +=1000
		$CanvasLayer/item5.queue_free()
		$CanvasLayer/item5desc.hide()
	pass
