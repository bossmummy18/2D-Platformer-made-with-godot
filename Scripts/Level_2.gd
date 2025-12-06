extends Node2D

func _process(_delta):
	
	if Input.is_action_pressed("ui_cancel") :
		
		get_tree().change_scene("res://Scenes/Menu_Level.tscn")

func _on_Finish_body_entered(body):
	
	if body.name == "Player" :
		
		get_tree().change_scene("res://Scenes/Level_3.tscn")
