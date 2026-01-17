class_name Event extends Node2D

@export var current_time: String = "00:00"

var npc_manager: Node2D = null
var prop_manager: Node2D = null


func _ready() -> void:
	npc_manager = get_node("NPCManager")
	prop_manager = get_node("PropManager")