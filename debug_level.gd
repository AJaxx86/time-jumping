extends Node2D


func _ready() -> void:
	var level_ui: LevelUI = get_tree().get_nodes_in_group("LevelUI")[0]


func _process(delta: float) -> void:
	pass
