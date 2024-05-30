extends Control

@export var caminho_menu: String

func _ready() -> void:
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file(caminho_menu)
