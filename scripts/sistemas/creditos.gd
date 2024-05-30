extends Control

@export var caminho_menu: String

func _ready() -> void:
	for botao in get_tree().get_nodes_in_group("botoes"):
		botao.pressed.connect(self._on_button_pressed.bind(botao))


func _on_button_pressed(botao: Button) -> void:
	match botao.name:
		"voltar":
			get_tree().change_scene_to_file(caminho_menu)
