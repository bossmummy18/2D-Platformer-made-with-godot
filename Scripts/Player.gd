extends KinematicBody2D

var pos = Vector2()

var grav = 20
var speed = 130

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"):
		pos.x += speed
	if Input.is_action_pressed("ui_left"):
		pos.x -= speed
	if Input.is_action_pressed("ui_select") and is_on_floor() :
		pos.y = -400
	
	pos.y += grav
	
	pos = move_and_slide(pos,Vector2.UP)
	
	pos.x = lerp(pos.x,0,0.3)
