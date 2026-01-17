class_name EventManager extends Node

var events: Array[Node2D] = []
var current_event: int = 0


func _ready() -> void:
	for event in get_children():
		if event is not Event:
			push_warning("Non event child found in EventManager: {event}")
			continue
		
		events.append(event)
	
	for i in range(events.size()):
		if i == 0:
			events[i].show()
		events[i].hide()