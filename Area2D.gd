extends Area2D
export(String, FILE, "*.tscn") var next_l
func _physics_process(delta):
	var bodys=get_overlapping_bodies()
	for i in bodys:
		if i.name == "player1":
			get_tree().change_scene(next_l)
			