extends Control

@onready var btn_iniciar = $Buttons/Iniciar
@onready var btn_creditos = $Buttons/Creditos
@onready var btn_sair = $Buttons/Sair

func _ready():
	btn_iniciar.pressed.connect(_on_iniciar_pressed)
	btn_creditos.pressed.connect(_on_creditos_pressed)
	btn_sair.pressed.connect(_on_sair_pressed)

func _on_iniciar_pressed():
	get_tree().change_scene_to_file("res://Levels/Main.tscn")
	
func _on_creditos_pressed():
	get_tree().change_scene_to_file("res://Levels/Creditos.tscn")

func _on_sair_pressed():
	get_tree().quit()
