extends KinematicBody2D

var mov=Vector2()
const speed=200
const accelar=30
func _process(delta):
	mov.y+=10
	if Input.is_action_pressed("ui_right"):
			mov.x=min(mov.x+accelar,speed)
			$Sprite.flip_h=false
			$Sprite.play("run")
	elif Input.is_action_pressed("ui_left"):
			mov.x= max(mov.x-accelar,-speed)
			$Sprite.flip_h=true
			$Sprite.play("run")
	
	
	else:
		mov.x=0
		$Sprite.play("sp1")
		mov.x=lerp(mov.x,0,0.2)
		#mov.y=0
	if is_on_floor():
		print("is on foolr")
		if Input.is_action_just_pressed("ui_up"):
			mov.y=-300
	else:
		if mov.y<0:
		 	$Sprite.play("jump")
		else:
			$Sprite.play("fall")
	if mov.y>750:
		get_tree().change_scene("res://end.tscn")
		
	mov=move_and_slide(mov,Vector2(0,-1))
	
	
	
	
	pass

