extends Node2D

var clicks = 0
var addclicks = 1
var cost1 = 10
var cost2 = 100
var cost3 = 1000
var cost4 = 10000
var cost5 = 100000

func _ready():
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
