class_name LevelUI extends Control

signal Event_Selected(id: int)

@onready var event_list: OptionButton = $MarginContainer/OptionButton


func update_events(event_times: Array, current_event: int) -> void:
	if event_list == null:
		push_error("Event list not instantiated.")
		return
	event_list.clear()
	for time in event_times:
		event_list.add_item(str(time.name))
	event_list.selected = current_event


func _on_event_selected(index: int) -> void:
	emit_signal("Event_Selected", index)
