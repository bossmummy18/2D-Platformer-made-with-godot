extends Node2D

var is_v = true

func _process(_delta):
	
	if Input.is_action_pressed("ui_cancel") :
		
		get_tree().change_scene("res://Scenes/Menu_Level.tscn")

func _on_Finish_body_entered(body):
	
	if body.name == "Player" :
		
		if is_v :
			
			$Cube.queue_free()
			$Cube2.queue_free()
			$Cube3.queue_free()
			
			is_v = false

func _on_Finish2_body_entered(body):
	
	if body.name == "Player" :
		
		get_tree().change_scene("res://Scenes/Menu.tscn")
