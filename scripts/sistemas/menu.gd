extends Control

@export var caminho_jogo		: String
@export var caminho_creditos	: String
@export var caminho_configs		: String

func _ready() -> void:
	for botao in get_tree().get_nodes_in_group("botoes"):
		botao.pressed.connect(self._on_button_pressed.bind(botao))


func _on_button_pressed(botao: Button) -> void:
	match botao.name:
		"jogar":
			get_tree().change_scene_to_file(caminho_jogo)
		"creditos":
			get_tree().change_scene_to_file(caminho_creditos)
		"configs":
			get_tree().change_scene_to_file(caminho_configs)
		"sair":
			get_tree().quit()
			
		


