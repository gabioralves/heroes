extends Control

var coins: int = 0

@export var hero: HeroData

@onready var coins_label: Label = $VBoxContainer/CoinsLabel
@onready var coin_button: Button = $VBoxContainer/CoinButton
@onready var hero_label: Label = $VBoxContainer/HeroLabel

func _ready() -> void:
	coin_button.pressed.connect(_on_coin_button_pressed)
	_update_coins_label()
	hero_label.text = "%s (Nível %d)\nForça: %d | Agilidade: %d | Inteligência: %d" % [hero.hero_name, hero.level, hero.strength, hero.agility, hero.intelligence]

func _on_coin_button_pressed() -> void:
	coins += 1
	_update_coins_label()

func _update_coins_label() -> void:
	coins_label.text = "Moedas: %d" % coins
