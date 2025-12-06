extends Node2D

func _on_Start_pressed():
	
	get_tree().change_scene("res://Scenes/Menu_Level.tscn")

func _on_About_Us_pressed():
	
	get_tree().change_scene("res://Scenes/About_Us.tscn")

func _on_Exit_pressed():
	get_tree().quit()
