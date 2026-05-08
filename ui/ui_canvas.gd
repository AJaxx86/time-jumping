extends CanvasLayer

@onready var level_ui: LevelUI = preload("res://ui/level_ui.tscn").instantiate()


func update_level_events(event_times: Array) -> void:
	if level_ui == null:
		push_error("LevelUI not instantiated.")
		return
	level_ui.update_events(event_times)
