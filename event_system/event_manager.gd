class_name EventManager extends Node

var events: Array[Node2D] = []
var current_event: int = 0


func _ready() -> void:
	for event in get_children():
		if event is not Event:
			push_warning("Non event child found in EventManager: " + str(event))
			continue
		events.append(event)
	
	_on_event_selected(current_event)

	update_event_list()


func update_event_list() -> void:
	var ui: LevelUI = get_tree().get_nodes_in_group("LevelUI")[0]
	ui.update_events(events, current_event)


func _on_event_selected(id: int) -> void:
	current_event = id
	for i in range(events.size()):
		if i == id:
			events[i].show()
			continue
		events[i].hide()
