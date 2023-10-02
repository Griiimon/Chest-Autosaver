extends Node2D



func _ready():
	post_ready.call_deferred()

func post_ready():
	print($Chest.content.gold)
	$Chest.content.gold+= 1
	print($Chest.content.gold)
	$Chest.save()
	print($Chest.content.gold)
	get_tree().quit()
