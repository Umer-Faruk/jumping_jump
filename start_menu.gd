#start menu
extends Control



func _on_stat_pressed():
	get_tree().change_scene("res://world.tscn")


func _on_quit_pressed():
	get_tree().quit()
	
