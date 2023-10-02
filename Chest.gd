@tool
extends Node2D
class_name Chest

const SAVE_PATH= "res://chest content/"

@export var content: Resource


func _ready():
	if not Engine.is_editor_hint(): return
	if get_tree().root == self: return
	#content= content.duplicate(true)
	#print(content.resource_path)
	#if not content:
	print("Run")
	if not content:
		print("Create new Resource")
		content= ResourceLoader.load("res://default_content.tres").duplicate(true)
		content.gold= -1
	save.call_deferred()
	pass
	
	
func save():
	prints("Save, initialized? ", content.initialized)
	if not content.initialized:
		print("Create new save")
		content.initialized= true
		var ctr:= 0
		var dir= DirAccess.open(SAVE_PATH)
		while dir.file_exists(str("chest_", ctr, ".tres")):
			ctr+= 1
			
		var save_to= "res://chest content/" + str("chest_", ctr, ".tres")
		print("Saving to ", save_to)
		content.take_over_path(save_to)
		ResourceSaver.save(content, save_to, ResourceSaver.FLAG_CHANGE_PATH)
		prints("Confirm", content.resource_path, content.resource_name)
	else:
		print("Overwrite save")
		ResourceSaver.save(content)
		
