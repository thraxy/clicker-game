extends Node2D

func _on_playbutton_pressed() -> void:
	get_tree().change_scene("res://src/initial.tscn")


func _on_exitbutton_pressed() -> void:
	get_tree().quit()
